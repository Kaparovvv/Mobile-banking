import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_family_flutter/features/notification/domain/entity/notification_entity.dart';
import '../../../../core/exports/exports.dart';

class NotificationScreen extends StatelessWidget {
  final NotificationEntity notificationData;
  const NotificationScreen({super.key, required this.notificationData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper.white,
      appBar: AppBar(
        title: AppBarTitle(
          title: notificationData.office,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat("dd.MM.yyyy").format(notificationData.date),
                style: TextStyleHelper.f16w500.copyWith(
                  color: ThemeHelper.grey,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                notificationData.city,
                style: TextStyleHelper.f23w700,
              ),
              const SizedBox(height: 20),
              Text(
                notificationData.status,
                style: TextStyleHelper.f16w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
