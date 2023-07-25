import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../base/data/base/model/pagination.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success({required T data, String? message, String? status}) = Success<T>;

  const factory Result.successWithPages({
    required T data,
    String? message,
    String? status,
    Pagination? pagination,
  }) = SuccessWithPages<T>;

  const factory Result.failure({String? message}) = Failure<T>;
}
