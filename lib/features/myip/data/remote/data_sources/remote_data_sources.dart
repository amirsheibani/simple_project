import '../../../../../core/base/data/base/model/base_response.dart';
import '../model/ip_entity.model.g.dart';

abstract class IpRemoteDataSource {
  Future<BaseSingleResponse<IpModel?>> requestGetIpFromServer();

}