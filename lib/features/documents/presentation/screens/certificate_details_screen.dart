import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/commons/dialog_helper.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/custom_outlined_button_widget.dart';
import 'package:my_family_flutter/core/widgets/dialog_application_widget.dart';
import 'package:my_family_flutter/features/documents/presentation/bloc/certificate_bloc/certificate_bloc.dart';
import 'package:my_family_flutter/features/documents/presentation/widgets/baby_certificate_content.dart';
import 'package:my_family_flutter/features/documents/presentation/widgets/marriage_certificate_content.dart';

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
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CertificateBloc, CertificateState>(
      listener: (context, state) {
        if (state.isFailed) {
          DialogHelper.showErrorDialog(
            context,
            DialogApplicationWidgetParams(
              statusIcon: IconHelper.error,
              content: state.message,
              buttonTitle: TextHelper.back,
            ),
            () => context.router.popUntil(
              (route) => route.settings.name == DocumentsScreenRoute.name,
            ),
          );
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
                      if (state.isBabyCertificate) {
                        context.read<CertificateBloc>().add(
                              const BabyCertificateFetched(),
                            );
                      } else {
                        context.read<CertificateBloc>().add(
                              const MarriageCertificateFetched(),
                            );
                      }
                    },
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        child: state.loaded
                            ? Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  state.isBabyCertificate
                                      ? BabyCertificateContent(
                                          certificate: state.babyCertificate,
                                        )
                                      : MarriageCertificateContent(
                                          certificate:
                                              state.marriageCertificate,
                                        ),
                                  const SizedBox(height: 20),
                                  CustomOutlinedButtonWidget(
                                    onPressed: () {},
                                    textButton: "Отправить документ",
                                    icon: Icons.ios_share,
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              )
                            : const Center(child: Text("")),
                      ),
                    ),
                  ),
          ),
        );
      },
    );
  }
}
