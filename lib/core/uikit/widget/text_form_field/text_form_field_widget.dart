import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/config/theme/app_theme.dart';
import '../../keybord/input_done_view.dart';
import '../../spacing.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({super.key, this.controller, this.hintText, this.prefixIcon, this.iconSvgPath, this.textInputType = TextInputType.text, this.onChange});

  final TextEditingController? controller;
  final String? hintText;
  final Widget? prefixIcon;
  final String? iconSvgPath;
  final TextInputType? textInputType;
  final ValueChanged<String>? onChange;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  FocusNode? focusNode;

  @override
  void initState() {
    focusNode = FocusNode();
    focusNode!.addListener(() {
      bool hasFocus = focusNode!.hasFocus;
      if (hasFocus) {
        KeyboardOverlay.showOverlay(context);
      } else {
        KeyboardOverlay.removeOverlay();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    focusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: Theme.of(context).softGrey,
          ),
          color: Theme.of(context).blue4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Space.h8,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              keyboardType: widget.textInputType,
              controller: widget.controller,
              style: Theme.of(context).textTheme.titleMedium,
              focusNode: focusNode,
              autofocus: false,
              onChanged: widget.onChange,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).grey),
                border: InputBorder.none,
                prefixIcon: widget.prefixIcon ??
                    (widget.iconSvgPath != null
                        ? SizedBox(
                            width: 24,
                            height: 24,
                            child: Center(
                              child: SvgPicture.asset(
                                width: 24,
                                height: 24,
                                widget.iconSvgPath!,
                                colorFilter: ColorFilter.mode(Theme.of(context).grey, BlendMode.srcIn),
                                fit: BoxFit.contain,
                              ),
                            ),
                          )
                        : null),
              ),
            ),
          ),
          Space.h8,
        ],
      ),
    );
  }
}
