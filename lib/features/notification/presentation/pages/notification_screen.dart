import 'package:flutter/material.dart';
import '../../../../core/exports/exports.dart';
import '../bloc/notification_bloc.dart';

class NotificationScreen extends StatelessWidget {
  final NotificationModel notificationData;
  const NotificationScreen({super.key, required this.notificationData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper.white,
      appBar: AppBar(
        title: AppBarTitle(
          title: notificationData.title,
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
                notificationData.date,
                style:
                    TextStyleHelper.f16w500.copyWith(color: ThemeHelper.grey),
              ),
              const SizedBox(height: 10),
              Text(
                notificationData.title,
                style: TextStyleHelper.f23w700,
              ),
              const SizedBox(height: 20),
              Text(
                notificationData.descrition,
                style: TextStyleHelper.f16w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
