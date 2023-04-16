import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/dialog_application_widget.dart';

class DialogHelper {
  static void showErrorDialog(
    BuildContext context,
    DialogApplicationWidgetParams params,
    void Function() onPressed,
  ) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => DialogApplicationWidget(
        params: params,
        onPressed: onPressed,
      ),
    );
  }
}

// DialogApplicationWidgetParams(
//   statusIcon: IconHelper.error,
//   content: TextHelper.noDataFetching,
//   buttonTitle: TextHelper.back,
// )

// context.router.popUntil(
//   (route) => route.settings.name == DocumentsScreenRoute.name,
// )