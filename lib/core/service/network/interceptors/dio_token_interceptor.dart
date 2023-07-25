import 'dart:io';

import 'package:dio/dio.dart';

import '../../../base/data/local/data_sources/token/token_local_data_source.dart';
import '../../../base/data/local/models/token/token_model.dart';
import '../../../di/base/di_setup.dart';

class DioTokenInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    TokenLocalDataSource tokenLocalDataSource = getIt<TokenLocalDataSource>();
    final result = await tokenLocalDataSource.readToken();
    TokenModel? tokenModel = result.data;
    options.headers['device'] = 'app';
    if (tokenModel?.accessToken != null) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer ${tokenModel?.accessToken}';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // TokenLocalDataSource tokenLocalDataSource = getIt<TokenLocalDataSource>();
      // final result = await tokenLocalDataSource.readToken();
      // if (result.data?.accessToken != null) {
      //   final context = AppRoute.router.routerDelegate.navigatorKey.currentContext;
      //   if (context != null && context.mounted) {
      //     Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const SplashPage()), (route) => false);
      //   }
      // }
    }

    return handler.next(err);
  }
}
