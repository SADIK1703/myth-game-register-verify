import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/core/constants/assets/image_paths.dart';
import 'package:myth_game_register_verify/core/utils/screen_size.dart';

class VerifyPageBackground extends StatelessWidget {
  const VerifyPageBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImagePaths.verifyBackground,
      height: ScreenSize.instance(context).responsiveHeight(926),
      width: ScreenSize.instance(context).responsiveWidth(428),
      fit: BoxFit.fitWidth,
    );
  }
}
