import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/constants/const_keeper.dart';
import '../../../config/routes/go_route.dart';

class ForceUpdateInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['APP-VERSION'] = ConstKeeper.version;
    handler.next(options);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    // if (err.response?.statusCode == 426) {
    //   final context = AppRoute.router.routerDelegate.navigatorKey.currentContext;
    //   if (context != null) {
    //     context.go(AppRoute.forceUpdatePath);
    //   }
    // }
    return handler.next(err);
  }
}
