import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/features/documents/domain/entity/marriage_certificate_entity.dart';
import 'detail_item.dart';

class MarriageCertificateContent extends StatelessWidget {
  final MarriageCertificateEntity certificate;
  const MarriageCertificateContent({
    super.key,
    required this.certificate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 0, bottom: 10),
              child: const Text(
                "Муж",
                style: TextStyleHelper.f18w500,
              ),
            ),
            const Divider(height: 0.5),
            DetailItem(
              title: "ФИО",
              content:
                  "${certificate.maleFirstName} ${certificate.maleLastName}",
            ),
            DetailItem(
              title: "ИИН",
              content: certificate.maleIin,
            ),
            DetailItem(
              title: "Национальность",
              content: certificate.maleNationality,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: const Text(
                "Жена",
                style: TextStyleHelper.f18w500,
              ),
            ),
            const Divider(height: 0.5),
            DetailItem(
              title: "ФИО",
              content:
                  "${certificate.femaleFirstName} ${certificate.femaleLastName}",
            ),
            DetailItem(
              title: "ИИН",
              content: certificate.femaleIin,
            ),
            DetailItem(
              title: "Национальность",
              content: certificate.femaleNationality,
            ),
            DetailItem(
              title: "Регион",
              content: certificate.city,
            ),
            DetailItem(
              title: "Место регистрации",
              content: certificate.office,
            ),
          ],
        )
      ],
    );
  }
}
