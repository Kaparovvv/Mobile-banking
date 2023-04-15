import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/loading_overlay_widget.dart';
import 'package:my_family_flutter/features/auth/presentation/bloc/auth_bloc.dart';
import '../../../../core/exports/exports.dart';
import '../../../../core/widgets/custom_outlined_button_widget.dart';
import '../../../../core/widgets/custom_snackbar.dart';

class LogoutDialogWidget extends StatefulWidget {
  final void Function(bool isLoggedIn)? onLoginResult;
  const LogoutDialogWidget({super.key, this.onLoginResult});

  @override
  State<LogoutDialogWidget> createState() => _LogoutDialogWidgetState();
}

class _LogoutDialogWidgetState extends State<LogoutDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (!state.authenticated) {
              context.router.pushAndPopUntil(
                AuthScreenRoute(),
                predicate: ((route) => route.isFirst),
              );
            }
            if (state.isFailed) {
              context.router.pop();
              showCustomSnackBar(context, state.message);
            }
          },
          builder: (context, state) {
            if (state.loading) {
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
                        onPressed: () {
                          context.read<AuthBloc>().add(
                                const LogOut(),
                              );
                        },
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
