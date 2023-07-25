import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../common/constants/const_keeper.dart';
import '../../../service/network/interceptors/dio_token_interceptor.dart';
import '../../../service/network/interceptors/force_update_interceptor.dart';

@module
abstract class NetworkModule {
  @singleton
  DioTokenInterceptor get _dioTokenInterceptor => DioTokenInterceptor();

  @singleton
  ForceUpdateInterceptor get _forceUpdateInterceptor => ForceUpdateInterceptor();

  @singleton
  Dio get dio => _getDio();

  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker => _internetConnectionChecker();

  @singleton
  PrettyDioLogger get prettyDioLogger => PrettyDioLogger(requestHeader: true, requestBody: true, responseBody: true, responseHeader: true, error: true, compact: true, maxWidth: 180);

  _getDio() {
    var dio = Dio(BaseOptions(baseUrl: environment.url!));
    dio.interceptors.add(_dioTokenInterceptor);
    dio.interceptors.add(_forceUpdateInterceptor);
    dio.interceptors.add(prettyDioLogger);
    dio.options.connectTimeout = const Duration(seconds: 5);
    dio.options.receiveTimeout = const Duration(seconds: 5);
    dio.options.sendTimeout = const Duration(seconds: 5);
    return dio;
  }

  _internetConnectionChecker() {
    if (kIsWeb) {
      return null;
    }
    InternetConnectionChecker internetConnectionChecker = InternetConnectionChecker.createInstance(
      checkTimeout: const Duration(seconds: 10), // Custom check timeout
      checkInterval: const Duration(seconds: 10), // Custom check interval
      addresses: [
        AddressCheckOptions(
          address: InternetAddress(
            '1.1.1.1', // CloudFlare
            type: InternetAddressType.IPv4,
          ),
        ),
        AddressCheckOptions(
          address: InternetAddress(
            '2606:4700:4700::1111', // CloudFlare
            type: InternetAddressType.IPv6,
          ),
        ),
        AddressCheckOptions(
          address: InternetAddress(
            '8.8.4.4', // Google
            type: InternetAddressType.IPv4,
          ),
        ),
        AddressCheckOptions(
          address: InternetAddress(
            '2001:4860:4860::8888', // Google
            type: InternetAddressType.IPv6,
          ),
        ),
        AddressCheckOptions(
          address: InternetAddress(
            '208.67.222.222', // OpenDNS
            type: InternetAddressType.IPv4,
          ), // OpenDNS
        ),
        AddressCheckOptions(
          address: InternetAddress(
            '2620:0:ccc::2', // OpenDNS
            type: InternetAddressType.IPv6,
          ), // OpenDNS
        ),
      ],
    );

    return internetConnectionChecker;
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
