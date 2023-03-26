import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/core/constants/app_colors.dart';
import 'package:myth_game_register_verify/core/utils/screen_size.dart';

class AppFilledLongButton extends StatelessWidget {
  const AppFilledLongButton({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [BoxShadow(color: AppColors.lightPink, offset: Offset(0, 4), blurRadius: 30)],
          borderRadius: BorderRadius.circular(ScreenSize.instance(context).responsiveWidth(14)),
          color: AppColors.lightPink,
        ),
        height: ScreenSize.instance(context).responsiveHeight(72),
        width: ScreenSize.instance(context).responsiveWidth(380),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
