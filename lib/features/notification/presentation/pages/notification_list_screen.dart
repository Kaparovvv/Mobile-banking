import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/custom_snackbar.dart';
import 'package:my_family_flutter/features/notification/domain/entity/notification_entity.dart';

import '../../../../core/exports/exports.dart';
import '../bloc/notification_bloc.dart';

class NotificationListScreen extends StatefulWidget {
  final List<NotificationEntity> notifications;
  const NotificationListScreen({super.key, required this.notifications});

  @override
  State<NotificationListScreen> createState() => _NotificationListScreenState();
}

class _NotificationListScreenState extends State<NotificationListScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: const AppBarTitle(
              title: TextHelper.notification,
            ),
          ),
          body: SafeArea(
            child: BlocConsumer<NotificationBloc, NotificationState>(
              listener: (context, state) {
                if (state.isFailed) {
                  showCustomSnackBar(context, state.message);
                }
              },
              builder: (context, state) {
                return state.loaded
                    ? RefreshIndicator(
                        color: ThemeHelper.color08B89D,
                        onRefresh: () async => context
                            .read<NotificationBloc>()
                            .add(const GetData()),
                        child: _listOfNotitfication(
                          listOfNotification: state.list,
                        ),
                      )
                    : state.loading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : nothingHereYet(context);
              },
            ),
          ),
        ),
      ],
    );
  }

  ListView _listOfNotitfication({
    required List<NotificationEntity> listOfNotification,
  }) {
    return ListView.separated(
      itemCount: listOfNotification.length,
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) {
        var notification = listOfNotification[index];
        return listOfNotification.isNotEmpty
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: ThemeHelper.white,
                  elevation: 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      notification.office,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleHelper.f18w500
                          .copyWith(color: ThemeHelper.color7E5BC2),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      notification.status,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleHelper.f14w600,
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        DateFormat("dd.MM.yyyy").format(notification.date),
                        maxLines: 3,
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyleHelper.f14w500
                            .copyWith(color: ThemeHelper.grey),
                      ),
                    ),
                  ],
                ),
                onPressed: () => context.router.push(
                    NotificationScreenRoute(notificationData: notification)),
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(IconHelper.empty),
                  const SizedBox(height: 10),
                  const Text(
                    TextHelper.nothingHereYet,
                    style: TextStyleHelper.f16w500,
                  ),
                ],
              );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
