import 'package:injectable/injectable.dart';

import '../../../../service/network/network_state/result.dart';
import '../../repositories/token/token_repository.dart';
import '../base_usecase.dart';

@lazySingleton
class HasTokenUseCase extends BaseUseCaseNoArgs<Result<bool>> {
  final TokenRepository _repository;

  HasTokenUseCase(this._repository);

  @override
  Future<Result<bool>> call() {
    return _repository.hasToken();
  }
}
