import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myth_game_register_verify/core/constants/assets/icon_paths.dart';
import 'package:myth_game_register_verify/core/constants/texts/register_page_texts.dart';
import 'package:myth_game_register_verify/core/utils/screen_size.dart';
import 'package:myth_game_register_verify/features/shared_widgets/app_text_form_field.dart';

class RegisterPasswordFormField extends StatelessWidget {
  const RegisterPasswordFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: AppTextFormField(
          controller: TextEditingController(),
          labelText: RegisterPageTexts.passwordLabel,
          keyboardType: TextInputType.visiblePassword,
        )),
        SizedBox(width: ScreenSize.instance(context).responsiveWidth(20)),
        SvgPicture.asset(
          IconPaths.passwordObscure,
          width: ScreenSize.instance(context).responsiveWidth(31),
        ),
      ],
    );
  }
}
