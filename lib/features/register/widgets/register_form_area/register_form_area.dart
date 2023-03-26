import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/core/constants/app_colors.dart';
import 'package:myth_game_register_verify/core/utils/screen_size.dart';
import 'package:myth_game_register_verify/features/register/widgets/register_form_area/create_account_button.dart';
import 'package:myth_game_register_verify/features/register/widgets/register_form_area/register_name_form_field.dart';
import 'package:myth_game_register_verify/features/register/widgets/register_form_area/register_password_form_field.dart';
import 'package:myth_game_register_verify/features/register/widgets/register_form_area/register_title.dart';

import 'register_mail_form_field.dart';

class RegisterFormArea extends StatelessWidget {
  const RegisterFormArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(ScreenSize.instance(context).responsiveWidth(60))),
      child: DecoratedBox(
        decoration: const BoxDecoration(color: AppColors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenSize.instance(context).responsiveHeight(70)),
            Padding(
              padding: EdgeInsets.only(left: ScreenSize.instance(context).responsiveWidth(30)),
              child: const RegisterTitle(),
            ),
            SizedBox(height: ScreenSize.instance(context).responsiveHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ScreenSize.instance(context).responsiveWidth(30)),
              child: const RegisterNameFormField(),
            ),
            SizedBox(height: ScreenSize.instance(context).responsiveHeight(30)),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: ScreenSize.instance(context).responsiveWidth(30)),
                child: const RegisterMailFormField()),
            SizedBox(height: ScreenSize.instance(context).responsiveHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ScreenSize.instance(context).responsiveWidth(30)),
              child: const RegisterPasswordFormField(),
            ),
            SizedBox(height: ScreenSize.instance(context).responsiveHeight(60)),
            const Center(
              child: CreateAccountButton(),
            ),
            SizedBox(height: ScreenSize.instance(context).responsiveHeight(60) + MediaQuery.of(context).padding.bottom),
          ],
        ),
      ),
    );
  }
}
