import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_ip_bloc_event.freezed.dart';

@freezed
abstract class MyIpBlocEvent with _$MyIpBlocEvent{
  const factory MyIpBlocEvent.call() = MyIpBlocEventCall;

}