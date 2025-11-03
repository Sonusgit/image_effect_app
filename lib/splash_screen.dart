import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:image_effect_app/core/helpers/network_controller.dart';
import 'package:image_effect_app/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  NetworkController networkController = Get.find<NetworkController>();
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),() {

      networkController.isOnline.value ? Get.offNamed(AppRoutes.home): Get.offNamed(AppRoutes.notNetworkScreen);
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Splash Screen"),),
    );
  }
}