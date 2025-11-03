import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:image_effect_app/core/helpers/network_controller.dart';
import 'package:image_effect_app/routes/app_routes.dart';

class NotNetworkScreen extends StatelessWidget {
  NotNetworkScreen({super.key});
final  NetworkController controller =Get.find<NetworkController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return chackConnection();
      }
    );
  }

  Scaffold chackConnection() {
    return controller.isOnline.value? Scaffold(
        body: Center(child: Text('Network Screen')),
      ):Scaffold(body: Center(child: Center(child: Column(
        children: [
          Text('Not Network Screen'),
          TextButton(onPressed: (){controller.chackNetworkConnection();
           controller.isOnline.value ? Get.offAll(AppRoutes.home):print("");
          }, child: Text('Try Again'))
        ],
      ))),);
  }
  }
