class CityModel {
  CityModel({
    this.id,
    this.name,
    this.nameEn,
    this.domainCode,
    this.description,
    this.provinceId,
    this.latitude,
    this.longitude,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory CityModel.fromJson(dynamic json) {
    return CityModel(
      id: json['id'],
      name: json['name'],
      nameEn: json['name_en'],
      domainCode: json['domain_code'],
      description: json['description'],
      provinceId: json['province_id'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
  final int? id;
  final String? name;
  final String? nameEn;
  final String? domainCode;
  final String? description;
  final int? provinceId;
  final String? latitude;
  final String? longitude;
  final String? deletedAt;
  final String? createdAt;
  final String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['name_en'] = nameEn;
    map['domain_code'] = domainCode;
    map['description'] = description;
    map['province_id'] = provinceId;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['deleted_at'] = deletedAt;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}
