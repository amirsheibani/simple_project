import 'package:go_router/go_router.dart';
import 'package:simple_project/features/myip/presentation/pages/myip_page.dart';

import '../../../common/constants/const_keeper.dart';
import '../../../features/main_page/presentation/pages/main_page.dart';
import '../../../features/splash_page/presentation/pages/splash_page.dart';


class AppRoute {
  //Routes
  static const String mainPath = '/';
  static const String myIpPath = '/myIp';
  static const String splashPath = '/splash';

  static final router = GoRouter(
    initialLocation: splashPath,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) {
          return MainPage(
            key: ConstKeeper.mainGlobalKey,
          );
        },
        routes: [
          GoRoute(
            path: 'myIp',
            builder: (context, state) {
              return const MyIpPage();
            },
          ),
        ],
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) {
          return const SplashPage();
        },
      ),
    ],
  );
}
