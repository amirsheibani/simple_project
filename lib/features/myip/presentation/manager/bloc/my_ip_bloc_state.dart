import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/ip_entity.dart';

part 'my_ip_bloc_state.freezed.dart';

@freezed
abstract class MyIpBlocState with _$MyIpBlocState{
  const factory MyIpBlocState.idle() = MyIpBlocStateIdle;
  const factory MyIpBlocState.loading() = MyIpBlocStateLoading;
  const factory MyIpBlocState.success(
      {IpEntity? data}) = MyIpBlocStateSuccess;
  const factory MyIpBlocState.failed({String? message}) = MyIpBlocStateFailed;
}