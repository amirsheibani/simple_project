import 'package:flutter/material.dart';
import '../../../../core/config/theme/app_theme.dart';
import '../../../common/util/assets_png_helper.dart';
import '../../../generated/l10n.dart';
import '../widget/button/button_widget.dart';

Future<void> showUnderConstructionDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.6,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: Theme.of(context).white),
          child: Column(
            children: [
              Text(
                "UNDER CONSTRUCTION",
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Image.asset(
                  AssetsPngHelper.underConstruction,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                child: ButtonWidget(
                  title: S.of(context).accept,
                  fit: ButtonFit.fitWidth,
                  buttonType: ButtonType.outlined,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
