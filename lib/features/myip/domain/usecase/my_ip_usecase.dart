import 'package:injectable/injectable.dart';

import '../../../../core/base/domain/usecase/base_usecase.dart';
import '../../../../core/service/network/network_state/result.dart';
import '../entity/ip_entity.dart';
import '../repository/my_ip_repository.dart';

@singleton
class MyIPUseCase extends BaseUseCaseNoArgs<Result<IpEntity?>> {
  MyIPUseCase(
      this._apiRepository,
      );

  final ApiRepository _apiRepository;

  @override
  Future<Result<IpEntity?>> call() async {
    final Result<IpEntity?> result = await _apiRepository.myIpFetchFromServer();
    return result;
  }
}