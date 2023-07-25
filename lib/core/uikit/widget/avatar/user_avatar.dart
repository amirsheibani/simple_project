import 'package:flutter/material.dart';
import '../../../config/theme/app_theme.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, required this.image});
  final Widget image;
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
        child: image,
      ),
    );
  }
}
