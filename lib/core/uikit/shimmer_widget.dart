import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../config/theme/app_theme.dart';

class ApShimmer extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final bool? isCircle;
  final EdgeInsets? margin;
  final Color? baseColor;
  final Color? highlightColor;

  const ApShimmer.rectangular({super.key, this.width = double.infinity, required this.height, this.radius = 10, this.margin, this.isCircle = false, this.baseColor, this.highlightColor});

  const ApShimmer.circular({super.key, this.width = double.infinity, this.height = double.infinity, this.radius = 10, this.margin, this.isCircle = true, this.baseColor, this.highlightColor});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: baseColor ?? Theme.of(context).blue4,
        highlightColor: highlightColor ?? Theme.of(context).blue3,
        period: const Duration(milliseconds: 2500),
        child: Container(
          margin: margin ?? const EdgeInsets.all(16),
          width: width,
          height: height,
          decoration: ShapeDecoration(
            color: Theme.of(context).blue3,
            shape: isCircle ?? false ? const CircleBorder() : RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(radius))),
          ),
        ),
      );
}
