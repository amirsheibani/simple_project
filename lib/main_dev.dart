import 'package:flutter/material.dart';

import 'common/constants/const_keeper.dart';
import 'common/constants/environment.dart';
import 'simple_app.dart';
import 'setup.dart';


void main() async {
  environment = Dev();
  environment.schema = 'https';
  environment.baseUrl = 'api.myip.com';
  environment.externalPageUrl = '';
  environment.prefixPath = '';
  await setupApp();

  runApp(
    const Banner(
      location: BannerLocation.bottomStart,
      layoutDirection: TextDirection.ltr,
      textDirection: TextDirection.ltr,
      message: 'Dev',
      textStyle: TextStyle(color: Color(0xFFFFFFFF), fontSize: 12),
      color: Color(0xFF37CB9F),
      child: SimpleApp(),
    ),
  );
}
