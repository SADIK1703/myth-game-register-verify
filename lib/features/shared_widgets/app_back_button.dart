import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myth_game_register_verify/core/constants/assets/icon_paths.dart';
import 'package:myth_game_register_verify/core/utils/screen_size.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      IconPaths.backButton,
      width: ScreenSize.instance(context).responsiveWidth(179),
      height: ScreenSize.instance(context).responsiveHeight(179),
    );
  }
}
