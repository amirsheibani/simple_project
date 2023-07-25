import 'package:injectable/injectable.dart';
import '../../../../../common/extension/api_result_extension.dart';
import '../../../../service/network/network_state/result.dart';
import '../../../domain/repositories/token/token_repository.dart';
import '../../local/data_sources/token/token_local_data_source.dart';

@LazySingleton(as: TokenRepository)
class TokenRepositoryImpl extends TokenRepository {
  final TokenLocalDataSource _localDataSource;

  TokenRepositoryImpl(this._localDataSource);

  @override
  Future<Result<bool>> hasToken() async {
    try {
      final result = await _localDataSource.readToken();
      final bool status = (result.data != null) && (result.data!.accessToken != null);
      return Result.success(data: status, status: result.status, message: result.message);
    } catch (e, s) {
      return e.toResult(s);
    }
  }

  @override
  Future<Result<bool>> resetToken() async {
    try {
      final result = await _localDataSource.removeToken();
      return Result.success(data: result.data ?? false, status: result.status, message: result.message);
    } catch (e, s) {
      return e.toResult(s);
    }
  }
}
