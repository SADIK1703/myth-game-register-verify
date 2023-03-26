import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/core/constants/app_colors.dart';
import 'package:myth_game_register_verify/core/utils/screen_size.dart';
import 'package:myth_game_register_verify/features/shared_widgets/app_back_button.dart';
import 'package:myth_game_register_verify/features/register/widgets/register_background.dart';
import 'package:myth_game_register_verify/features/register/widgets/register_form_area/register_form_area.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPink,
      body: GestureDetector(
        onTap: primaryFocus?.unfocus,
        child: Stack(
          children: [
            const Positioned(
              top: 0,
              child: RegisterBackground(),
            ),
            const Positioned(
              top: 0,
              left: 0,
              child: AppBackButton(),
            ),
            Positioned(
              bottom: 0,
              height: ScreenSize.instance(context).responsiveHeight(675),
              width: ScreenSize.instance(context).responsiveWidth(429),
              child: const RegisterFormArea(),
            )
          ],
        ),
      ),
    );
  }
}
