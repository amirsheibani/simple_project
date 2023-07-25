import 'package:freezed_annotation/freezed_annotation.dart';

part 'infinity_list_state.freezed.dart';

@freezed
class InfinityListState<E> with _$InfinityListState {
  const factory InfinityListState.idle() = InfinityListStateIdle;

  const factory InfinityListState.loading({List<E?>? items, String? message}) = InfinityListStateLoading;

  const factory InfinityListState.success({List<E?>? items, String? message}) = InfinityListStateSuccess;

  const factory InfinityListState.error({String? message}) = InfinityListStateError;
}
