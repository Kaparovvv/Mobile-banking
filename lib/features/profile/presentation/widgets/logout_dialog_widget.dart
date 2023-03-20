import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/widgets/loading_overlay_widget.dart';

import '../../../../core/exports/exports.dart';
import '../../../../core/router/app_router.gr.dart';
import '../../../../core/widgets/dialog_application_widget.dart';
import '../bloc/logout_bloc.dart';

class LogoutDialogWidget extends StatefulWidget {
  const LogoutDialogWidget({super.key});

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
              state.isLogout ? context.router.replace(AuthScreenRoute()) : null;
            }
          },
          builder: (context, state) {
            if (state is LoadingLogoutState) {
              return const LoadingOverlayWidget();
            }
            return DialogApplicationWidget(
              statusIcon: IconHelper.exit,
              content: TextHelper.logoutQuetions,
              isLogout: true,
              logout: () => _logoutBloc.add(UserLogoutEvent()),
            );
          },
        ),
      ],
    );
  }
}
