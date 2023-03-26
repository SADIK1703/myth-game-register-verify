import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/core/constants/texts/register_page_texts.dart';
import 'package:myth_game_register_verify/features/shared_widgets/app_text_form_field.dart';

class RegisterNameFormField extends StatelessWidget {
  const RegisterNameFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: TextEditingController(),
      labelText: RegisterPageTexts.nameLabel,
      keyboardType: TextInputType.name,
    );
  }
}
