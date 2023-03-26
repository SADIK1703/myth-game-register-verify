import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/core/utils/screen_size.dart';
import 'package:myth_game_register_verify/features/shared_widgets/app_back_button.dart';
import 'package:myth_game_register_verify/features/verify/widgets/verify_branding_text.dart';
import 'package:myth_game_register_verify/features/verify/widgets/verify_button.dart';
import 'package:myth_game_register_verify/features/verify/widgets/verify_page_background.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const VerifyPageBackground(),
          const AppBackButton(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const VerifyBrandingText(),
              const Spacer(flex: 3),
              const Center(
                child: VerifyButton(),
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
