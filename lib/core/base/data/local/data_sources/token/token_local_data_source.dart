
import '../../../base/model/base_response.dart';
import '../../models/token/token_model.dart';

abstract class TokenLocalDataSource {
  Future<BaseSingleResponse> saveToken(TokenModel? value);

  Future<BaseSingleResponse<TokenModel>> readToken();

  Future<BaseSingleResponse<bool>> removeToken();
}
