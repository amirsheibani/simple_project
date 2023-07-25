import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../features/main_page/presentation/pages/main_page.dart';
import 'environment.dart';


late Environment environment;

class ConstKeeper {
  static String buildNumber = '';
  static String version = '';
  static String? firebaseToken = '';
  static String? phoneModel = '';

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<MainPageState> mainGlobalKey = GlobalKey<MainPageState>();
  static GlobalKey<ScaffoldMessengerState> snackBarKey = GlobalKey<ScaffoldMessengerState>();

  static BitmapDescriptor? originMarkerIcon;
  static BitmapDescriptor? destinationMarkerIcon;
}
