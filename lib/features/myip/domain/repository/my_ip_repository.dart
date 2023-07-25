
import '../../../../core/service/network/network_state/result.dart';
import '../entity/ip_entity.dart';

abstract class ApiRepository {
  Future<Result<IpEntity?>> myIpFetchFromServer();
}