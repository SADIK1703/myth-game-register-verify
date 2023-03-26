import 'package:flutter/material.dart';
import 'package:myth_game_register_verify/core/route_manager/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: AppRouter.routes,
      initialRoute: AppRoutes.registerPage.path,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
