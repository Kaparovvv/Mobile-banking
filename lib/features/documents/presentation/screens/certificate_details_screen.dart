import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/custom_outlined_button_widget.dart';
import 'package:my_family_flutter/core/widgets/dialog_application_widget.dart';
import 'package:my_family_flutter/features/documents/presentation/bloc/certificate_bloc/certificate_bloc.dart';
import 'package:my_family_flutter/features/documents/presentation/widgets/certificate_content.dart';

class CertificateDetailsScreen extends StatefulWidget {
  final String title;

  const CertificateDetailsScreen({
    super.key,
    required this.title,
  });

  @override
  State<CertificateDetailsScreen> createState() =>
      _CertificateDetailsScreenState();
}

class _CertificateDetailsScreenState extends State<CertificateDetailsScreen> {
  _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => DialogApplicationWidget(
        params: DialogApplicationWidgetParams(
          statusIcon: IconHelper.error,
          content: TextHelper.noDataFetching,
          buttonTitle: TextHelper.back,
        ),
        onPressed: () => context.router.popUntil(
          (route) => route.settings.name == DocumentsScreenRoute.name,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CertificateBloc, CertificateState>(
      listener: (context, state) {
        if (state.isFailed) {
          _showErrorDialog(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: AppBarTitle(title: widget.title),
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: state.loading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : RefreshIndicator(
                    onRefresh: () async {
                      context.read<CertificateBloc>().add(
                            const CertificateFetched(),
                          );
                    },
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: SizedBox(
                        height: context.height * 0.85,
                        child: state.loaded
                            ? Column(
                                children: [
                                  CertificateContent(
                                    certificate: state.certificate,
                                  ),
                                  CustomOutlinedButtonWidget(
                                    onPressed: () {},
                                    textButton: "Отправить документ",
                                    icon: Icons.ios_share,
                                  ),
                                ],
                              )
                            : Center(child: Text(state.message)),
                      ),
                    ),
                  ),
          ),
        );
      },
    );
  }
}
