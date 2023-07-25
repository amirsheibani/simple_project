import 'package:injectable/injectable.dart';

import '../../../../common/extension/api_result_extension.dart';
import '../../../../core/service/network/network_state/result.dart';
import '../../domain/entity/ip_entity.dart';
import '../../domain/entity/ip_mapper.dart';
import '../../domain/repository/my_ip_repository.dart';
import '../remote/data_sources/remote_data_sources.dart';

@LazySingleton(as: ApiRepository)
class ApiRepositoryImpl extends ApiRepository{
  final IpRemoteDataSource _remoteDataSource;

  ApiRepositoryImpl(this._remoteDataSource);

  @override
  Future<Result<IpEntity?>> myIpFetchFromServer() async {
    try{
      final result = await _remoteDataSource.requestGetIpFromServer();
      return  Result.success(data: result.data?.mapper());
    } catch (e,s) {
      return e.toResult(s);
    }
  }

}