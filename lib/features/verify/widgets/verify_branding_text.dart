
import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/core/constants/app_colors.dart';
import 'package:myth_game_register_verify/core/constants/app_text_styles.dart';
import 'package:myth_game_register_verify/core/constants/texts/verify_page_texts.dart';
import 'package:myth_game_register_verify/core/utils/screen_size.dart';

class VerifyBrandingText extends StatelessWidget {
  const VerifyBrandingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: ScreenSize.instance(context).responsiveWidth(30)),
          child: Text(
            VerifyPageTexts.verifyTitle,
            style: AppTextStyles().bold(context, fontSize: 32).copyWith(color: AppColors.pink),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
              left: ScreenSize.instance(context).responsiveWidth(30),
              right: ScreenSize.instance(context).responsiveWidth(73),
            ),
            child: Text(
              VerifyPageTexts.verifyDescription,
              style: AppTextStyles().normal(context, fontSize: 17).copyWith(color: AppColors.pink),
            )),
      ],
    );
  }
}