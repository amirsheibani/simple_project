import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'internet_connection_checker_state.dart';

@injectable
class InternetConnectionCheckerCubit extends Cubit<InternetConnectionCheckerState> {
  final InternetConnectionChecker _internetConnectionChecker;

  InternetConnectionCheckerCubit(this._internetConnectionChecker) : super(const InternetConnectionCheckerState.idle());

  hasConnection() async {
    emit(const InternetConnectionCheckerState.loading());
    try {
      final result = await _internetConnectionChecker.hasConnection;
      if (result) {
        emit(const InternetConnectionCheckerState.connected());
      } else {
        emit(const InternetConnectionCheckerState.disconnected());
      }
    } catch (e) {
      emit(InternetConnectionCheckerState.error(e.toString()));
    }
  }
}
