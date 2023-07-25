import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:package_info_plus/package_info_plus.dart';

import 'common/constants/const_keeper.dart';
import 'common/util/assets_png_helper.dart';
import 'core/di/base/di_setup.dart';
import 'core/di/network/di/network_module.dart';
import 'core/service/storage/hive/global_config.dart';
import 'core/service/storage/hive/token.dart';

Future<void> setupApp() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Hive.initFlutter();
  Hive.registerAdapter(GlobalConfigAdapter());
  Hive.registerAdapter(TokenAdapter());
  configureDependencies();
  HttpOverrides.global = MyHttpOverrides();
  await Future.delayed(const Duration(seconds: 2));
  ConstKeeper.navigatorKey = GlobalKey<NavigatorState>();

  BitmapDescriptor.fromAssetImage(const ImageConfiguration(size: Size(32, 32)), AssetsPngHelper.setPickLocation).then((onValue) {
    ConstKeeper.originMarkerIcon = onValue;
  });
  BitmapDescriptor.fromAssetImage(const ImageConfiguration(size: Size(32, 32)), AssetsPngHelper.setDestinationLocation).then((onValue) {
    ConstKeeper.destinationMarkerIcon = onValue;
  });

  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  ConstKeeper.buildNumber = packageInfo.buildNumber;
  ConstKeeper.version = packageInfo.version;
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // await Firebase.initializeApp();
}
