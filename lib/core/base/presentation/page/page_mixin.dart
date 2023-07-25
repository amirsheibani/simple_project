import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/config/theme/app_theme.dart';
import '../../../../common/constants/const_keeper.dart';
import '../../../../generated/l10n.dart';

mixin PageMixin {
  Widget blocProvidersBuilder(Widget child, List<dynamic> providers) {
    return MultiBlocProvider(
        providers: [...providers],
        child: Builder(builder: (context) {
          return child;
        }));
  }

  void showInfoSnackBar({BuildContext? buildContext, String? title, String? subtitle, Duration duration = const Duration(seconds: 4), bool showTop = false}) {
    if (ConstKeeper.snackBarKey.currentState != null) {
      BuildContext context = buildContext ?? ConstKeeper.snackBarKey.currentState!.context;
      FocusManager.instance.primaryFocus?.unfocus();
      ConstKeeper.snackBarKey.currentState?.hideCurrentSnackBar();
      ConstKeeper.snackBarKey.currentState?.showSnackBar(
        SnackBar(
          content: ListTile(
            dense: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: Icon(
              Icons.info_outline,
              size: 22,
              color: Theme.of(context).white,
            ),
            title: title != null
                ? Text(
                    title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).white, fontWeight: FontWeight.w600),
                  )
                : Text(
                    S.of(context).info,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).white, fontWeight: FontWeight.w600),
                  ),
            subtitle: subtitle != null
                ? Text(
                    subtitle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).white, fontWeight: FontWeight.w400),
                  )
                : null,
            horizontalTitleGap: 8,
          ),
          duration: duration,
          backgroundColor: Theme.of(context).blue3,
          behavior: SnackBarBehavior.floating,
          margin: showTop ? EdgeInsets.only(bottom: MediaQuery.of(context).size.height - 100, right: 20, left: 20) : null,
        ),
      );
    }
  }

  void showWarningSnackBar({BuildContext? buildContext, String? title, String? subtitle, Duration duration = const Duration(seconds: 4), bool showTop = false}) {
    if (ConstKeeper.snackBarKey.currentState != null) {
      BuildContext context = buildContext ?? ConstKeeper.snackBarKey.currentState!.context;
      FocusManager.instance.primaryFocus?.unfocus();
      ConstKeeper.snackBarKey.currentState?.hideCurrentSnackBar();
      ConstKeeper.snackBarKey.currentState?.showSnackBar(
        SnackBar(
          content: ListTile(
            dense: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: Icon(
              Icons.info_outline,
              size: 22,
              color: Theme.of(context).dark,
            ),
            title: title != null
                ? Text(
                    title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).dark, fontWeight: FontWeight.w600),
                  )
                : Text(
                    S.of(context).warning,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).dark, fontWeight: FontWeight.w600),
                  ),
            subtitle: subtitle != null
                ? Text(
                    subtitle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).dark, fontWeight: FontWeight.w400),
                  )
                : null,
            horizontalTitleGap: 8,
          ),
          duration: duration,
          backgroundColor: Theme.of(context).softYellow,
          behavior: SnackBarBehavior.floating,
          margin: showTop ? EdgeInsets.only(bottom: MediaQuery.of(context).size.height - 100, right: 20, left: 20) : null,
        ),
      );
    }
  }

  void showErrorSnackBar({BuildContext? buildContext, String? title, String? subtitle, Duration duration = const Duration(seconds: 6), bool showTop = false}) {
    if (ConstKeeper.snackBarKey.currentState != null) {
      BuildContext context = buildContext ?? ConstKeeper.snackBarKey.currentState!.context;
      FocusManager.instance.primaryFocus?.unfocus();
      ConstKeeper.snackBarKey.currentState?.hideCurrentSnackBar();
      ConstKeeper.snackBarKey.currentState?.showSnackBar(
        SnackBar(
          content: ListTile(
            dense: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: Icon(
              Icons.info_outline,
              size: 22,
              color: Theme.of(context).white,
            ),
            title: title != null
                ? Text(
                    title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).white, fontWeight: FontWeight.w600),
                  )
                : Text(
                    S.of(context).error,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).white, fontWeight: FontWeight.w600),
                  ),
            subtitle: subtitle != null
                ? Text(
                    subtitle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).white, fontWeight: FontWeight.w400),
                  )
                : null,
            horizontalTitleGap: 8,
          ),
          duration: duration,
          backgroundColor: Theme.of(context).softRed,
          behavior: SnackBarBehavior.floating,
          margin: showTop ? EdgeInsets.only(bottom: MediaQuery.of(context).size.height - 100, right: 20, left: 20) : null,
        ),
      );
    }
  }

  void showSuccessSnackBar({BuildContext? buildContext, String? title, String? subtitle, Duration duration = const Duration(seconds: 4), bool showTop = false}) {
    if (ConstKeeper.snackBarKey.currentState != null) {
      BuildContext context = buildContext ?? ConstKeeper.snackBarKey.currentState!.context;
      FocusManager.instance.primaryFocus?.unfocus();
      ConstKeeper.snackBarKey.currentState?.hideCurrentSnackBar();
      ConstKeeper.snackBarKey.currentState?.showSnackBar(
        SnackBar(
          content: ListTile(
            dense: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: Icon(
              Icons.info_outline,
              size: 22,
              color: Theme.of(context).white,
            ),
            title: title != null
                ? Text(
                    title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).white, fontWeight: FontWeight.w600),
                  )
                : Text(
                    S.of(context).success,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).white, fontWeight: FontWeight.w600),
                  ),
            subtitle: subtitle != null
                ? Text(
                    subtitle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).white, fontWeight: FontWeight.w400),
                  )
                : null,
            horizontalTitleGap: 8,
          ),
          duration: duration,
          backgroundColor: Theme.of(context).softGreen,
          behavior: SnackBarBehavior.floating,
          margin: showTop ? EdgeInsets.only(bottom: MediaQuery.of(context).size.height - 100, right: 20, left: 20) : null,
        ),
      );
    }
  }
}
