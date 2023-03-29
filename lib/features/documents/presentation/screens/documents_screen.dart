import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/custom_elevated_button_widget.dart';
import '../../../../core/exports/exports.dart';
import '../../data/models/id_card.dart';

class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({super.key});

  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
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
              textButton: TextHelper.idCard,
              iconUrl: IconHelper.identityCard,
              onPressed: () => context.router.push(
                DocumentDetailsScreenRoute(
                  title: TextHelper.idCard,
                  idCard: idCard,
                ),
              ),
            ),
            const SizedBox(height: 20),
            CustomElevatedButtonWidget(
              textButton: TextHelper.driverCard,
              iconUrl: IconHelper.driverCard,
              onPressed: () => context.router.push(
                DocumentDetailsScreenRoute(
                  title: TextHelper.driverCard,
                  idCard: driverLicense,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final IDCard idCard = IDCard(
    title: "Удостоверение личности",
    numberID: "3464535",
    firstName: "Имя",
    secondName: "Отчество",
    lastName: "Фамилия",
    birthDate: "01.01.2000",
    identityNumber: "021209652389",
    issueDate: "12.12.2018",
    validDate: "12.12.2028",
    frontImageURL:
        "https://sun9-7.userapi.com/impg/c858528/v858528394/1c1bb5/ksNvylwya4I.jpg?size=1080x695&quality=96&sign=df64f50c904255416f0ca2747b7c3ac9&c_uniq_tag=WLJsu7zAeXnzWupBOYr68yr0ma3ug4y5f7u-8L6RB_U&type=album",
    backImageURL:
        "https://faketools.com/wp-content/uploads/2019/10/Kazakhstan-ID-back-3-1024x616.jpg",
  );

  final IDCard driverLicense = IDCard(
    title: "Удостоверение личности",
    numberID: "3464535",
    firstName: "Имя",
    secondName: "Отчество",
    lastName: "Фамилия",
    birthDate: "01.01.2000",
    identityNumber: "021209652389",
    issueDate: "12.12.2018",
    validDate: "12.12.2028",
    frontImageURL:
        'https://auto.mail.ru/image/296237-1141154fd3042b14159f68b961ad2cae/',
    backImageURL: "https://base.spinform.ru/tmp_images/i000024356.JPG",
  );
}
