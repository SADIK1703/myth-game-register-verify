import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/features/register/page/register_page.dart';
import 'package:myth_game_register_verify/features/verify/page/verify_page.dart';

enum AppRoutes {
  registerPage('register'),
  verifyPage('verify');

  final String path;

  const AppRoutes(this.path);
}

extension AppRouter on AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.registerPage.path: (context) => const RegisterPage(),
    AppRoutes.verifyPage.path: (context) => const VerifyPage(),
  };
}
