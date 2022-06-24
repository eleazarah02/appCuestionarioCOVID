import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:filtro_sanitario_cdp/Theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'widgets/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Caja Depac',
      theme: AppTheme.lightTheme,
      home: AnimatedSplashScreen(
          splash: 'images/LogoCDP.png',
          splashIconSize: 300,
          duration: 1000,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: AppTheme.primary,
          nextScreen: const HomeScreen()),
    );
  }
}
