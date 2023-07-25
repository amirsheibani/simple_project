import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../../../core/base/data/base/model/base_response.dart';
import '../model/ip_entity.model.g.dart';
import '../service/api_service.dart';
import 'remote_data_sources.dart';



@LazySingleton(as: IpRemoteDataSource)
class IpRemoteDataSourceImpl extends IpRemoteDataSource {
  final ApiService _apiService;


  IpRemoteDataSourceImpl(this._apiService);

  @override
  Future<BaseSingleResponse<IpModel?>> requestGetIpFromServer() async {
    final resultApi = await _apiService.requestGetIp();
    return BaseSingleResponse<IpModel?>(
      data: IpModel.fromJson(jsonDecode(resultApi)),
      message: 'Successes',
      status: true
    );
  }

}