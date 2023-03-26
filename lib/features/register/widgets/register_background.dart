import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/core/constants/assets/image_paths.dart';
import 'package:myth_game_register_verify/core/utils/screen_size.dart';

class RegisterBackground extends StatelessWidget {
  const RegisterBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.instance(context).responsiveWidth(429),
      child: Image.asset(
        ImagePaths.registerBackground,
        fit: BoxFit.contain,
      ),
    );
  }
}
