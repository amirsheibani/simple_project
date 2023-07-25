import 'package:flutter/material.dart';
import '../../../../common/util/assets_png_helper.dart';
import '../../../config/theme/app_theme.dart';

enum CarType { car, vanPool, bus }

class VehicleAvatar extends StatelessWidget {
  const VehicleAvatar({super.key, required this.carType});
  const VehicleAvatar.withString({super.key, required String? nameCarType})
      : carType = nameCarType == 'car'
            ? CarType.car
            : nameCarType == 'bus'
                ? CarType.bus
                : CarType.vanPool;
  final CarType carType;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Theme.of(context).white,
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: Theme.of(context).softGrey,
        ),
      ),
      child: Center(
        child: _getCarAvatar(),
      ),
    );
  }

  Widget _getCarAvatar() {
    switch (carType) {
      case CarType.car:
        return Image.asset(
          AssetsPngHelper.carIcon,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        );
      case CarType.bus:
        return Image.asset(
          AssetsPngHelper.busIcon,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        );
      case CarType.vanPool:
        return Image.asset(
          AssetsPngHelper.vanPoolIcon,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        );
    }
  }
}
