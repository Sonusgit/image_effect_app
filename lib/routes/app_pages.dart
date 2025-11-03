import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:image_effect_app/core/helpers/not_network_screen.dart';
import 'package:image_effect_app/routes/app_routes.dart';
import 'package:image_effect_app/splash_screen.dart';
import 'package:image_effect_app/views/home_screen.dart';

class AppPages {
   static const String initial = AppRoutes.splashScreen;
   static final routes=[
     GetPage(name: AppRoutes.splashScreen,
      page: () => SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 300),
      curve: Curves.easeInOutCubic
     ),
      GetPage(name: AppRoutes.home,
      page: () => HomeScreen(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 300),
      curve: Curves.easeInOutCubic
     ), GetPage(name: AppRoutes.notNetworkScreen,
    page: () => NotNetworkScreen(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 300),
      curve: Curves.easeInOutCubic
     ),
   ];
}