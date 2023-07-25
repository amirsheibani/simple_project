import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../base/data/base/model/pagination.dart';
import '../../../../../base/domain/usecase/base_usecase.dart';
import '../../../../../service/network/network_state/result.dart';
import 'infinity_list_state.dart';


abstract class InfinityListCubit<R> extends Cubit<InfinityListState<R>> {
  final BaseUseCaseWithPagination? useCaseWithPagination;
  final BaseUseCaseNoArgsWithPagination? useCaseNoArgsWithPagination;

  InfinityListCubit({
    this.useCaseWithPagination,
    this.useCaseNoArgsWithPagination,
  }) : super(const InfinityListState.idle());

  Pagination pagination = Pagination(currentPage: 1, perPage: 12);
  final Set<R?> items = {};

  bool validConditionNextPage() => (pagination.currentPage ?? 0) <= (pagination.lastPage ?? 2);

  void nextPage(bool ignoreAutomaticNextPage) {
    if (validConditionNextPage() && (!ignoreAutomaticNextPage)) {
      pagination.currentPage = (pagination.currentPage ?? 0) + 1;
    }
  }

  call<A>({A? arg, bool ignoreAutomaticNextPage = false}) async {
    emit(InfinityListState.loading(items: items.toList()));
    if (validConditionNextPage()) {
      final Result<List<R?>?> result;
      if (useCaseWithPagination != null) {
        result = await useCaseWithPagination?.call(arg, pagination);
        _handelState(result, ignoreAutomaticNextPage);
      } else if (useCaseNoArgsWithPagination != null) {
        result = await useCaseNoArgsWithPagination?.call(pagination);
        _handelState(result, ignoreAutomaticNextPage);
      }
    } else {
      if (!isClosed) {
        emit(InfinityListState.success(items: items.toList(), message: ''));
      }
    }
  }

  _handelState(Result<List<R?>?> result, bool ignoreAutomaticNextPage) {
    result.whenOrNull(successWithPages: (data, message, status, pagination) {
      if (pagination != null) {
        this.pagination.lastPage = pagination.lastPage;
      }
      items.addAll(data ?? []);
      nextPage(ignoreAutomaticNextPage);
      if (!isClosed) {
        emit(InfinityListState.success(items: items.toList(), message: message));
      }
    }, failure: (message) {
      if (!isClosed) {
        emit(InfinityListState.error(message: message ?? ''));
      }
    });
  }
}
