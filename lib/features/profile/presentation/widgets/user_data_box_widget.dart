import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/widgets/cached_network_image_widget.dart';
import 'package:my_family_flutter/features/profile/presentation/bloc/profile_bloc.dart';

import '../../../../core/exports/exports.dart';

class UserDataBoxWidget extends StatefulWidget {
  const UserDataBoxWidget({super.key});

  @override
  State<UserDataBoxWidget> createState() => _UserDataBoxWidgetState();
}

class _UserDataBoxWidgetState extends State<UserDataBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeHelper.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CachedNetworkImageWidget(
            width: context.width * 0.2,
            height: context.height * 0.1232,
            shape: BoxShape.circle,
            imageUrl: 'https://i.yapx.cc/EKqLO.jpg',
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return Text(
                    "${state.profileData.firstName} ${state.profileData.lastName}",
                    overflow: TextOverflow.fade,
                    style: TextStyleHelper.f16w500.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  );
                },
              ),
              const Text(
                'Son of Odin',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyleHelper.f14w600,
              ),
            ],
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
