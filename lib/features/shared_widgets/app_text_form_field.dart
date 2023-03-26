import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/core/constants/app_colors.dart';
import 'package:myth_game_register_verify/core/constants/app_text_styles.dart';
import 'package:myth_game_register_verify/core/utils/screen_size.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.keyboardType,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColors.pink,
      keyboardType: keyboardType,
      obscureText: keyboardType == TextInputType.visiblePassword,
      style: AppTextStyles().normal(context, fontSize: 15).copyWith(color: AppColors.pink),
      decoration: InputDecoration(
        enabled: true,
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        fillColor: AppColors.lightOrange,
        labelText: labelText,
        labelStyle: AppTextStyles().normal(context, fontSize: 12).copyWith(color: AppColors.pink),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.pink),
          borderRadius: BorderRadius.circular(
            ScreenSize.instance(context).responsiveWidth(14),
          ),
        ),
      ),
    );
  }
}
