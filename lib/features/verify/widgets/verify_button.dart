import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/core/constants/app_colors.dart';
import 'package:myth_game_register_verify/core/constants/app_text_styles.dart';
import 'package:myth_game_register_verify/core/constants/texts/verify_page_texts.dart';
import 'package:myth_game_register_verify/core/route_manager/routes.dart';
import 'package:myth_game_register_verify/features/shared_widgets/app_filled_long_button.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppFilledLongButton(
      child: Text(
        VerifyPageTexts.verifyButtonText,
        style: AppTextStyles().semibold(context, fontSize: 21).copyWith(color: AppColors.white),
      ),
      onTap: () => Navigator.pushReplacementNamed(context, AppRoutes.registerPage.path),
    );
  }
}
