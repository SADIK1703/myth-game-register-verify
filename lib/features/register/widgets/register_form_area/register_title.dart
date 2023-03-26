import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/core/constants/app_colors.dart';
import 'package:myth_game_register_verify/core/constants/app_text_styles.dart';
import 'package:myth_game_register_verify/core/constants/texts/register_page_texts.dart';

class RegisterTitle extends StatelessWidget {
  const RegisterTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      RegisterPageTexts.registerTitle,
      style: AppTextStyles().bold(context, fontSize: 32).copyWith(color: AppColors.pink),
    );
  }
}
