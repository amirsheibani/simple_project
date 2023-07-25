// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: BuildModelClass
// **************************************************************************

class IpModel {
  final String? ip;
  final String? country;
  final String? cc;
  IpModel({
    this.ip,
    this.country,
    this.cc,
  });

  factory IpModel.fromJson(Map<String, dynamic> json) {
    return IpModel(
      ip: json['ip'] as String?,
      country: json['country'] as String?,
      cc: json['cc'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ip'] = ip;
    map['country'] = country;
    map['cc'] = cc;
    return map;
  }
}
