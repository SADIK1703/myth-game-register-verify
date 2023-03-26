import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/core/constants/app_colors.dart';
import 'package:myth_game_register_verify/core/constants/app_text_styles.dart';
import 'package:myth_game_register_verify/core/constants/assets/image_paths.dart';
import 'package:myth_game_register_verify/core/constants/texts/verify_page_texts.dart';
import 'package:myth_game_register_verify/core/route_manager/routes.dart';
import 'package:myth_game_register_verify/core/utils/screen_size.dart';
import 'package:myth_game_register_verify/features/shared_widgets/app_back_button.dart';
import 'package:myth_game_register_verify/features/shared_widgets/app_filled_long_button.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImagePaths.verifyBackground,
            height: ScreenSize.instance(context).responsiveHeight(926),
            width: ScreenSize.instance(context).responsiveWidth(428),
            fit: BoxFit.fitWidth,
          ),
          const AppBackButton(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
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
              const Spacer(flex: 3),
              Center(
                child: AppFilledLongButton(
                  child: Text(
                    VerifyPageTexts.verifyButtonText,
                    style: AppTextStyles().semibold(context, fontSize: 21).copyWith(color: AppColors.white),
                  ),
                  onTap: () => Navigator.pushReplacementNamed(context, AppRoutes.registerPage.path),
                ),
              ),
              SizedBox(
                  height: ScreenSize.instance(context).responsiveHeight(60) + MediaQuery.of(context).padding.bottom),
            ],
          )
        ],
      ),
    );
  }
}
