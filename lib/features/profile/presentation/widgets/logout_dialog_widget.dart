import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/widgets/loading_overlay_widget.dart';

import '../../../../core/exports/exports.dart';
import '../../../../core/router/app_router.gr.dart';
import '../../../../core/widgets/custom_outlined_button_widget.dart';
import '../../../../core/widgets/custom_snackbar.dart';
import '../bloc/logout_bloc.dart';

class LogoutDialogWidget extends StatefulWidget {
  final void Function(bool isLoggedIn)? onLoginResult;
  const LogoutDialogWidget({super.key, this.onLoginResult});

  @override
  State<LogoutDialogWidget> createState() => _LogoutDialogWidgetState();
}

class _LogoutDialogWidgetState extends State<LogoutDialogWidget> {
  late LogoutBloc _logoutBloc;

  @override
  void initState() {
    _logoutBloc = LogoutBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocConsumer<LogoutBloc, LogoutState>(
          bloc: _logoutBloc,
          listener: (context, state) {
            if (state is LoadedLogoutState) {
              context.router.replaceAll([AuthScreenRoute()]);
            }
            if (state is ErrorLogoutState) {
              context.router.pop();
              showCustomSnackBar(context, state.message);
            }
          },
          builder: (context, state) {
            if (state is LoadingLogoutState) {
              return const LoadingOverlayWidget();
            }
            return AlertDialog(
              contentPadding: const EdgeInsets.all(20),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    IconHelper.exit,
                    width: context.width * 0.2,
                    height: context.height * 0.0887,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    TextHelper.logoutQuetions,
                    textAlign: TextAlign.center,
                    style: TextStyleHelper.f16w700,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomOutlinedButtonWidget(
                        textButton: TextHelper.back.toUpperCase(),
                        onPressed: () => context.router.pop(),
                      ),
                      const SizedBox(width: 10),
                      CustomOutlinedButtonWidget(
                        theme: ThemeHelper.red,
                        textButton: TextHelper.exit.toUpperCase(),
                        onPressed: () => _logoutBloc.add(UserLogoutEvent()),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
