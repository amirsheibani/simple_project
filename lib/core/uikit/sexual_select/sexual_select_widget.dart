import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

import '../../../generated/l10n.dart';

class SexualSelectWidget extends StatefulWidget {
  const SexualSelectWidget({super.key, required this.onChange, required this.selectValue});
  final ValueChanged<String> onChange;
  final String selectValue;

  @override
  State<SexualSelectWidget> createState() => _SexualSelectWidgetState();
}

class _SexualSelectWidgetState extends State<SexualSelectWidget> {
  late String _selected;

  @override
  void initState() {
    _selected = widget.selectValue;
    widget.onChange(_selected);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RadioGroup<String>.builder(
      direction: Axis.horizontal,
      textStyle: Theme.of(context).textTheme.titleMedium,
      groupValue: _selected,
      onChanged: (value) => setState(() {
        _selected = value ?? '';
        widget.onChange(value ?? '');
      }),
      items: [S.of(context).male, S.of(context).female],
      itemBuilder: (item) => RadioButtonBuilder(
        item,
      ),
    );
  }
}
