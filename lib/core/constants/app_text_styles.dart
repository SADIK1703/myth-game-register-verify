import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myth_game_register_verify/core/utils/screen_size.dart';

class AppTextStyles {
  TextStyle bold(BuildContext context, {required double fontSize}) => GoogleFonts.poppins(
        fontWeight: FontWeight.w800,
        fontSize: ScreenSize.instance(context).responsiveWidth(fontSize),
        height: 1.5,
      );

  TextStyle semibold(BuildContext context, {required double fontSize}) => GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: ScreenSize.instance(context).responsiveWidth(fontSize),
        height: 1.5,
      );

  TextStyle normal(BuildContext context, {required double fontSize}) => GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: ScreenSize.instance(context).responsiveWidth(fontSize),
        height: 1.5,
      );
}
