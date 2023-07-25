
import '../../../../service/network/network_state/result.dart';

abstract class TokenRepository {
  Future<Result<bool>> hasToken();
  Future<Result<bool>> resetToken();
}
