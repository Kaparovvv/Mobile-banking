import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';

class LoadingOverlayWidget extends StatelessWidget {
  const LoadingOverlayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: context.height,
      child: Stack(
        children: const [
          Opacity(
            opacity: 0.5,
            child: ModalBarrier(
              dismissible: false,
              color: ThemeHelper.black,
            ),
          ),
          Center(
            child: CircularProgressIndicator(
              color: ThemeHelper.color5061FF,
            ),
          ),
        ],
      ),
    );
  }
}
