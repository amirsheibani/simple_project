import 'package:flutter/material.dart';
import '../../../config/theme/app_theme.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key, required this.onChane, this.limitation, this.limitationChange});
  final ValueChanged<int> onChane;
  final ValueChanged<bool>? limitationChange;
  final int? limitation;

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {
            if (value > 1) {
              value--;
              widget.onChane(value);
              setState(() {});
            }
          },
          icon: Icon(Icons.remove_circle_outline, color: Theme.of(context).blue),
        ),
        Text(
          '$value',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        IconButton(
          onPressed: () {
            if (value == (widget.limitation ?? 0)) {
              widget.limitationChange?.call(true);
              return;
            }
            value++;
            widget.onChane(value);
            setState(() {});
          },
          icon: Icon(Icons.add_circle_outline, color: Theme.of(context).blue),
        )
      ],
    );
  }
}
