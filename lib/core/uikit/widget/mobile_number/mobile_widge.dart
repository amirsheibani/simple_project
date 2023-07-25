import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/util/assets_icon_helper.dart';
import '../../../../core/config/theme/app_theme.dart';
import '../../../../generated/l10n.dart';
import '../../keybord/input_done_view.dart';
import '../../spacing.dart';

class MobileWidget extends StatefulWidget {
  const MobileWidget({super.key, this.countryCodeTextController, this.mobileNumberTextController});

  final TextEditingController? countryCodeTextController;
  final TextEditingController? mobileNumberTextController;

  @override
  State<MobileWidget> createState() => _MobileWidgetState();
}

class _MobileWidgetState extends State<MobileWidget> {
  late TextEditingController _countryCodeTextController;
  late TextEditingController _mobileNumberTextController;
  late FocusNode focusNode;
  @override
  void initState() {
    if (widget.countryCodeTextController == null) {
      _countryCodeTextController = TextEditingController();
    } else {
      _countryCodeTextController = widget.countryCodeTextController!;
    }
    if (widget.mobileNumberTextController == null) {
      _mobileNumberTextController = TextEditingController();
    } else {
      _mobileNumberTextController = widget.mobileNumberTextController!;
    }

    focusNode = FocusNode();
    focusNode.addListener(() {
      bool hasFocus = focusNode.hasFocus;
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
    focusNode.dispose();
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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                onTap: () async {
                  const countryPicker = FlCountryCodePicker();
                  final result = await countryPicker.showPicker(context: context);
                  _countryCodeTextController.text = result?.dialCode ?? '';
                },
                autofocus: false,
                controller: _countryCodeTextController,
                readOnly: true,
                style: Theme.of(context).textTheme.titleMedium,
                decoration: InputDecoration(
                  hintText: S.of(context).country_code,
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).grey),
                  border: InputBorder.none,
                  prefixIcon: SizedBox(
                    width: 24,
                    height: 24,
                    child: Center(
                      child: SvgPicture.asset(
                        width: 24,
                        height: 24,
                        AssetsIconHelper.mobile,
                        colorFilter: ColorFilter.mode(Theme.of(context).grey, BlendMode.srcIn),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Space.w2,
          Container(
            width: 2,
            height: 64,
            color: Theme.of(context).softGrey,
            // VerticalDivider(
            //   thickness: 8,
            //   width: 4,
            //   color: Theme.of(context).grey,
          ),
          Space.w8,
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                focusNode: focusNode,
                autofocus: false,
                controller: _mobileNumberTextController,
                style: Theme.of(context).textTheme.titleMedium,
                decoration: InputDecoration(
                  hintText: S.of(context).enter_your_phone_number,
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).grey),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
