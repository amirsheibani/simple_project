import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../common/util/assets_icon_helper.dart';
import '../../../../generated/l10n.dart';
import '../../../di/base/di_setup.dart';
import '../../../config/theme/app_theme.dart';
import '../../spacing.dart';
import '../button/button_widget.dart';
import 'manager/map_cubit.dart';
import 'manager/map_state.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({
    super.key,
  });

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final Completer<GoogleMapController> mapControllerCompleter = Completer();
  late GoogleMapController mapController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = getIt<MapCubit>();
        final double latitudeO = double.tryParse('33.3152') ?? 33.3152;
        final double longitudeO = double.tryParse('44.3661') ?? 44.3661;
        cubit.pickUp = LatLng(latitudeO, longitudeO);
        final double latitudeD = double.tryParse('33.3152') ?? 33.3152;
        final double longitudeD = double.tryParse('44.3661') ?? 44.3661;
        cubit.destination = LatLng(latitudeD, longitudeD);
        cubit.setPikUpLocation();
        return cubit;
      },
      child: Builder(builder: (context) {
        return BlocConsumer<MapCubit, MapState>(
          listener: (context, state) {},
          builder: (context, state) {
            String title = '';
            Set<Marker> markers = {};
            state.whenOrNull(setPickUpLocation: (_) {
                  title = S.of(context).select_pickup_locations;
                }, setDestinationLocation: (_) {
                  title = S.of(context).select_destination_location;
                }, setResultLocation: (value) {
                  title = S.of(context).selected_locations;
                  markers = value;
                }) ??
                Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  color: Theme.of(context).background,
                  child: const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  ),
                );
            Future.delayed(Duration.zero, () {
              _goToTheNewPosition(state);
            });
            return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                leadingWidth: MediaQuery.of(context).size.width,
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Space.w8,
                    GestureDetector(
                      onTap: () {
                        if (state is MapStateSetPickUpLocation) {
                          Navigator.of(context).pop();
                        } else if (state is MapStateSetDestinationLocation) {
                          context.read<MapCubit>().setPikUpLocation();
                        } else {
                          context.read<MapCubit>().setDestinationLocation();
                        }
                      },
                      child: Icon(Icons.close, color: Theme.of(context).white),
                    ),
                    Space.w8,
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).white),
                    ),
                  ],
                ),
                actions: [
                  GestureDetector(
                    onTap: () async {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: Center(
                          child: SvgPicture.asset(
                            width: 24,
                            height: 24,
                            AssetsIconHelper.search,
                            colorFilter: ColorFilter.mode(Theme.of(context).white, BlendMode.srcIn),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              body: Center(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      child: GoogleMap(
                        mapType: MapType.normal,
                        initialCameraPosition: const CameraPosition(target: LatLng(33.3152, 44.3661), zoom: 11),
                        markers: markers,
                        onMapCreated: (GoogleMapController controller) async {
                          mapControllerCompleter.complete(controller);
                        },
                        onCameraMove: (value) async {
                          if (state is MapStateSetPickUpLocation) {
                            context.read<MapCubit>().setNewPickUpLocation(value.target);
                          } else if (state is MapStateSetDestinationLocation) {
                            context.read<MapCubit>().setNewDestinationLocation(value.target);
                          }
                          context.read<MapCubit>().zoom = await mapController.getZoomLevel();
                        },
                      ),
                    ),
                    if (state is! MapStateSetResultLocation)
                      Center(
                        child: SvgPicture.asset(
                          state is MapStateSetPickUpLocation ? AssetsIconHelper.pickLocation : AssetsIconHelper.destinationLocation,
                          width: 32,
                          height: 32,
                          colorFilter: ColorFilter.mode(state is MapStateSetPickUpLocation ? Theme.of(context).dark : Theme.of(context).blue1, BlendMode.srcIn),
                        ),
                      )
                  ],
                ),
              ),
              bottomNavigationBar: SizedBox(
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                  child: state is MapStateSetResultLocation
                      ? Row(
                          children: [
                            Expanded(
                              child: ButtonWidget(
                                onTap: () {
                                  context.read<MapCubit>().setPikUpLocation();
                                },
                                background: Theme.of(context).blue,
                                buttonType: ButtonType.filled,
                                fit: ButtonFit.fitWidth,
                                title: S.of(context).edit_locations,
                              ),
                            ),
                            Space.w8,
                            Expanded(
                              child: ButtonWidget(
                                onTap: () {
                                  Navigator.of(context).pop<Map<String, LatLng>>({
                                    "pickUp": context.read<MapCubit>().pickUp!,
                                    "destination": context.read<MapCubit>().destination!,
                                  });
                                },
                                background: Theme.of(context).blue,
                                buttonType: ButtonType.filled,
                                fit: ButtonFit.fitWidth,
                                title: S.of(context).continue_,
                              ),
                            ),
                          ],
                        )
                      : ButtonWidget(
                          onTap: () {
                            if (state is MapStateSetPickUpLocation) {
                              context.read<MapCubit>().setDestinationLocation();
                            } else {
                              context.read<MapCubit>().showResult();
                            }
                          },
                          background: Theme.of(context).blue,
                          buttonType: ButtonType.filled,
                          fit: ButtonFit.fitWidth,
                          title: state is MapStateSetPickUpLocation ? S.of(context).set_pickup_location : S.of(context).set_destination,
                        ),
                ),
              ),
            );
          },
        );
      }),
    );
  }

  Future<void> _goToTheNewPosition(MapState state) async {
    mapController = await mapControllerCompleter.future;
    if (state is MapStateSetResultLocation) {
      Future.delayed(const Duration(milliseconds: 200), () => mapController.animateCamera(CameraUpdate.newLatLngBounds(MapUtils.boundsFromLatLngList(state.markers.map((loc) => loc.position).toList()), 32)));
    } else if (state is MapStateSetPickUpLocation) {
      Future.delayed(const Duration(milliseconds: 200), () => mapController.animateCamera(CameraUpdate.newCameraPosition(state.cameraPosition)));
    } else if (state is MapStateSetDestinationLocation) {
      Future.delayed(const Duration(milliseconds: 200), () => mapController.animateCamera(CameraUpdate.newCameraPosition(state.cameraPosition)));
    }
  }
}

class MapUtils {
  static LatLngBounds boundsFromLatLngList(List<LatLng> list) {
    double x0 = 0.0, x1 = 0.0, y0 = 0.0, y1 = 0.0;
    for (LatLng latLng in list) {
      if (x0 == 0.0) {
        x0 = x1 = latLng.latitude;
        y0 = y1 = latLng.longitude;
      } else {
        if (latLng.latitude > x1) x1 = latLng.latitude;
        if (latLng.latitude < x0) x0 = latLng.latitude;
        if (latLng.longitude > y1) y1 = latLng.longitude;
        if (latLng.longitude < y0) y0 = latLng.longitude;
      }
    }
    return LatLngBounds(northeast: LatLng(x1, y1), southwest: LatLng(x0, y0));
  }
}
