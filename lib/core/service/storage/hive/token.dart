import 'package:hive_flutter/hive_flutter.dart';

part 'token.g.dart';

@HiveType(typeId: 1)
class Token extends HiveObject {
  Token({
    this.tokenType,
    this.expiresIn,
    this.accessToken,
    this.refreshToken,
  });

  @HiveField(0)
  String? tokenType;
  @HiveField(1)
  int? expiresIn;
  @HiveField(2)
  String? accessToken;
  @HiveField(3)
  String? refreshToken;
}
