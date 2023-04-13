import 'package:flutter/material.dart';
import 'package:my_family_flutter/features/documents/domain/entity/document_entity.dart';
import 'detail_item.dart';

class DetailsContent extends StatelessWidget {
  final DocumentEntity document;
  const DetailsContent({
    super.key,
    required this.document,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            DetailItem(
              title: "ФИО",
              content:
                  "${document.individual.firstName} ${document.individual.lastName}",
            ),
            DetailItem(
              title: "ИИН",
              content: document.individual.iin,
            ),
            DetailItem(
              title: "Дата рождения",
              content: document.individual.birthDate,
            ),
            DetailItem(
              title: "Номер документа",
              content: document.licenseNumber ?? "-",
            ),
            DetailItem(
              title: "Дата выдачи",
              content: document.issueDate ?? "-",
            ),
            DetailItem(
              title: "Срок действия",
              content: document.expirationDate ?? "-",
            ),
          ],
        )
      ],
    );
  }
}
