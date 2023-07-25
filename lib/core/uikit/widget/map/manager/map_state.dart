import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'map_state.freezed.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.idle() = MapStateIdle;

  const factory MapState.setPickUpLocation(CameraPosition cameraPosition) = MapStateSetPickUpLocation;
  const factory MapState.setDestinationLocation(CameraPosition cameraPosition) = MapStateSetDestinationLocation;
  const factory MapState.setResultLocation(Set<Marker> markers) = MapStateSetResultLocation;

  const factory MapState.error({String? message}) = MapStateError;
}
