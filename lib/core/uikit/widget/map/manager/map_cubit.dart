import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../../common/constants/const_keeper.dart';
import '../../../../../generated/l10n.dart';
import 'map_state.dart';

@injectable
class MapCubit extends Cubit<MapState> {
  MapCubit() : super(const MapState.idle());
  CameraPosition? cameraPosition;
  double? zoom = 11;
  Set<Marker> markers = {};

  LatLng? pickUp;
  LatLng? destination;

  Map<PolylineId, Polyline> polyLines = {};
  List<LatLng> polylineCoordinates = [];

  setNewPickUpLocation(LatLng value) {
    pickUp = value;
  }

  setNewDestinationLocation(LatLng value) {
    destination = value;
  }

  setPikUpLocation() {
    emit(const MapState.idle());
    cameraPosition = CameraPosition(target: pickUp!, zoom: zoom!);
    emit(MapState.setPickUpLocation(cameraPosition!));
  }

  setDestinationLocation() {
    emit(const MapState.idle());
    cameraPosition = CameraPosition(target: destination!, zoom: zoom!);
    emit(MapState.setDestinationLocation(cameraPosition!));
  }

  showResult() async {
    emit(const MapState.idle());
    markers.clear();

    markers.add(Marker(
        markerId: const MarkerId('1'),
        position: pickUp ?? const LatLng(33.3152, 44.3661),
        icon: ConstKeeper.originMarkerIcon!,
        infoWindow: InfoWindow(
          title: S.current.origin,
        )));

    markers.add(Marker(
        markerId: const MarkerId('2'),
        position: destination ?? const LatLng(33.3152, 44.3661),
        icon: ConstKeeper.destinationMarkerIcon!,
        infoWindow: InfoWindow(
          title: S.current.destination,
        )));
    emit(MapState.setResultLocation(markers));
  }
}
