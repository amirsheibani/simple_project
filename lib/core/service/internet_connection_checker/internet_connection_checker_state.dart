
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_connection_checker_state.freezed.dart';

@freezed
class InternetConnectionCheckerState with _$InternetConnectionCheckerState{
  const factory InternetConnectionCheckerState.idle() = InternetConnectionCheckerStateIdle;
  const factory InternetConnectionCheckerState.loading() = InternetConnectionCheckerStateLoading;
  const factory InternetConnectionCheckerState.connected() = InternetConnectionCheckerStateConnected;
  const factory InternetConnectionCheckerState.disconnected() = InternetConnectionCheckerStateDisconnected;
  const factory InternetConnectionCheckerState.error(String message) = InternetConnectionCheckerStateError;
}