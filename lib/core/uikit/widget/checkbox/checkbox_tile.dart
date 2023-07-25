import 'package:flutter/material.dart';

class ApCheckboxTile extends StatelessWidget {
  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final Widget title;

  const ApCheckboxTile({
    Key? key,
    this.value,
    this.onChanged,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Flexible(child: title),
      ],
    );
  }
}
