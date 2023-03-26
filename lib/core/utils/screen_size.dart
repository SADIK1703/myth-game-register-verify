import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:myth_game_register_verify/core/constants/app_constants.dart';

class ScreenSize {
  static ScreenSize? _instance;

  Size? _screenSize;

  double? _responsiveMultiplier;

  ScreenSize._(BuildContext context) {
    _screenSize ??= MediaQuery.of(context).size;

    final double responsiveWidth = _screenSize!.width / AppConstants.designWidth;
    final double responsiveHeight = _screenSize!.height / AppConstants.designHeight;

    _responsiveMultiplier = min<double>(responsiveHeight, responsiveWidth);
  }

  static ScreenSize instance(BuildContext context) {
    _instance ??= ScreenSize._(context);
    return _instance!;
  }

  Size responsiveSize(Size size) {
    return Size(size.width * (_responsiveMultiplier ?? 1), size.height * (_responsiveMultiplier ?? 1));
  }

  double responsiveWidth(double width) {
    return width * _screenSize!.width / AppConstants.designWidth;
  }

  double responsiveHeight(double height) {
    return height * _screenSize!.height / AppConstants.designHeight;
  }
}
