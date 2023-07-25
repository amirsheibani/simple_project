import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/constants/const_keeper.dart';
import 'common/constants/environment.dart';
import 'core/config/locale/locale_configs.dart';
import 'core/config/routes/go_route.dart';
import 'core/config/theme/app_theme.dart';
import 'core/di/base/di_setup.dart';
import 'core/service/internet_connection_checker/internet_connection_checker_cubit.dart';
import 'core/service/language_theme/language_theme_cubit.dart';
import 'core/service/language_theme/language_theme_state.dart';
import 'generated/l10n.dart';


class SimpleApp extends StatefulWidget {
  const SimpleApp({Key? key}) : super(key: key);

  @override
  State<SimpleApp> createState() => _SimpleAppState();
}

class _SimpleAppState extends State<SimpleApp> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          final bloc = getIt<ThemeAndLanguageCubit>();
          bloc.changeLanguage(manualSelectLanguageType: LanguageType.en);
          bloc.changeTheme(manualSelectThemeType: ThemeType.light);
          return bloc;
        }),
        if (!kIsWeb) BlocProvider(create: (context) => getIt<InternetConnectionCheckerCubit>()),
      ],
      child: BlocBuilder<ThemeAndLanguageCubit, ThemeAndLanguageState>(
        builder: (context, state) {
          return MaterialApp.router(
            key: ConstKeeper.navigatorKey,
            scaffoldMessengerKey: ConstKeeper.snackBarKey,
            debugShowCheckedModeBanner: false,
            locale: context.read<ThemeAndLanguageCubit>().locale!,
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: LocaleConfigs.localizationsDelegates,
            title: getMaterialAppTitle(),
            theme: context.read<ThemeAndLanguageCubit>().themeData!,
            routerConfig: AppRoute.router,
            // routerDelegate: AppRoute.router.routerDelegate,
            // routeInformationParser: AppRoute.router.routeInformationParser,
          );
        },
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      switch (state) {
        case AppLifecycleState.inactive:
          break;
        case AppLifecycleState.resumed:
          break;
        case AppLifecycleState.paused:
          break;
        case AppLifecycleState.detached:
          break;
      }
    });
  }

  String getMaterialAppTitle() {
    if (environment is Stage) {
      return 'ApollonStage';
    } else if (environment is Dev) {
      return 'ApollonDev';
    } else {
      return 'Apollon';
    }
  }
}
