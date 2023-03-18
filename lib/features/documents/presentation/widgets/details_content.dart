import 'package:flutter/material.dart';
import 'package:my_family_flutter/features/documents/data/models/id_card.dart';

import 'detail_item.dart';

class DetailsContent extends StatelessWidget {
  final IDCard idCard;
  const DetailsContent({
    super.key,
    required this.idCard,
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
                  "${idCard.firstName} ${idCard.secondName} ${idCard.lastName}",
            ),
            DetailItem(
              title: "ИИН",
              content: idCard.identityNumber,
            ),
            DetailItem(
              title: "Дата рождения",
              content: idCard.birthDate,
            ),
            DetailItem(
              title: "Номер документа",
              content: idCard.numberID,
            ),
            DetailItem(
              title: "Дата выдачи",
              content: idCard.issueDate,
            ),
            DetailItem(
              title: "Срок действия",
              content: idCard.validDate,
            ),
          ],
        )
      ],
    );
  }
}
