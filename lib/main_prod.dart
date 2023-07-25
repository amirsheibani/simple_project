import 'package:flutter/material.dart';

import 'common/constants/const_keeper.dart';
import 'common/constants/environment.dart';
import 'simple_app.dart';
import 'setup.dart';

void main() async {
  environment = Production();
  environment.schema = 'https';
  environment.baseUrl = 'api.myip.com';
  environment.externalPageUrl = '';
  environment.prefixPath = '';
  await setupApp();

  runApp(const SimpleApp());
}
