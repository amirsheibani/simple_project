

class TokenModel {

  TokenModel({this.tokenType,this.expiresIn,this.accessToken,this.refreshToken});

  String? tokenType;
  int? expiresIn;
  String? accessToken;
  String? refreshToken;

  factory TokenModel.fromJson(Map<String, dynamic>? map) {
    return TokenModel(
      tokenType: map?['token_type'] as String?,
      expiresIn: map?['expires_in'] as int?,
      accessToken: map?['access_token'] as String?,
      refreshToken: map?['refresh_token'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token_type'] = tokenType;
    map['expires_in'] = expiresIn;
    map['access_token'] = accessToken;
    map['refresh_token'] = refreshToken;
    return map;
  }
}