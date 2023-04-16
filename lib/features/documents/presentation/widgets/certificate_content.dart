import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_family_flutter/features/documents/domain/entity/baby_birth_certificate_entity.dart';
import 'package:my_family_flutter/features/documents/domain/entity/document_entity.dart';
import 'detail_item.dart';

class CertificateContent extends StatelessWidget {
  final BabyBirthCertificateEntity certificate;
  const CertificateContent({
    super.key,
    required this.certificate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            DetailItem(
              title: "Baby Name",
              content:
                  "${certificate.babyFirstName} ${certificate.babyLastName}",
            ),
            DetailItem(
              title: "Gender",
              content: certificate.babyGender,
            ),
            DetailItem(
              title: "Mother Name",
              content:
                  "${certificate.mother.firstName} ${certificate.mother.lastName}",
            ),
            DetailItem(
              title: "Mother Nationality",
              content: certificate.mother.nationality,
            ),
            DetailItem(
              title: "Father Name",
              content:
                  "${certificate.father.firstName} ${certificate.father.lastName}",
            ),
            DetailItem(
              title: "Father Nationality",
              content: certificate.father.nationality,
            ),
            DetailItem(
              title: "Country",
              content: certificate.country,
            ),
            DetailItem(
              title: "Office",
              content: certificate.office,
            ),
          ],
        )
      ],
    );
  }
}
