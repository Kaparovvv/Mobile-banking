import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/custom_elevated_button_widget.dart';
import 'package:my_family_flutter/features/documents/presentation/bloc/certificate_bloc/certificate_bloc.dart';
import 'package:my_family_flutter/features/documents/presentation/bloc/documents_bloc/documents_bloc.dart';
import '../../../../core/exports/exports.dart';

class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({super.key});

  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          title: TextHelper.myDocuments,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomElevatedButtonWidget(
              textButton: TextHelper.passport,
              iconUrl: IconHelper.identityCard,
              onPressed: () {
                context.read<DocumentsBloc>().add(
                      const GetPasportEvent(),
                    );
                context.router.push(
                  DocumentDetailsScreenRoute(
                    title: TextHelper.passport,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomElevatedButtonWidget(
              textButton: TextHelper.driverCard,
              iconUrl: IconHelper.driverCard,
              onPressed: () {
                context
                    .read<DocumentsBloc>()
                    .add(const GetDriverLicenseEvent());
                context.router.push(
                  DocumentDetailsScreenRoute(
                    title: TextHelper.driverCard,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomElevatedButtonWidget(
              textButton: TextHelper.babyCertificate,
              iconUrl: IconHelper.babyBirthCertificate,
              onPressed: () {
                context.read<CertificateBloc>().add(
                      const BabyCertificateFetched(),
                    );
                context.router.push(
                  CertificateDetailsScreenRoute(
                    title: TextHelper.babyCertificate,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomElevatedButtonWidget(
              textButton: TextHelper.marriageCertificate,
              iconUrl: IconHelper.marriageCertificate,
              onPressed: () {
                context.read<CertificateBloc>().add(
                      const MarriageCertificateFetched(),
                    );
                context.router.push(
                  CertificateDetailsScreenRoute(
                    title: TextHelper.marriageCertificate,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
