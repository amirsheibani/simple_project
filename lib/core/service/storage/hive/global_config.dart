import 'package:hive_flutter/hive_flutter.dart';

part 'global_config.g.dart';

@HiveType(typeId: 0)
class GlobalConfig extends HiveObject {
  GlobalConfig({
    this.showIntro,
  });

  @HiveField(0)
  bool? showIntro;
}
