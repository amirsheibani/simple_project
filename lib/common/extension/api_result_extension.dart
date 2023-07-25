

import '../../core/base/data/base/model/base_response.dart';
import '../../core/service/network/network_state/result.dart';
import 'network_exceptions.dart';

extension ErrorApiResultExtension on Object {
  Result<T> toResult<T>(StackTrace? stackTrace) {
    final error = NetworkExceptions.getDioException(this, stackTrace);
    final str = NetworkExceptions.getErrorMessage(error);
    return Result.failure(message: str);
  }
}

extension SuccessApiResultExtension on BaseSingleResponse {
  Result<T> toResult<T>() {
    var apiResult = Result<T>.success(data: data, message: message, status: status);
    return apiResult;
  }
}
