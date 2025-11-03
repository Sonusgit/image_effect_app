import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class NetworkController  extends GetxController {
   StreamSubscription? _streamSubscription;
   RxBool isOnline = false.obs;

   @override
  void onInit() {
   chackNetworkConnection();
    super.onInit();
  }
 void chackNetworkConnection(){
      _streamSubscription =InternetConnection().onStatusChange.listen((event) {
        if(event==InternetStatus.connected){
          isOnline.value=true;
        }else{
           isOnline.value=false;
        }
      },);
   } 
   
    @override
    void dispose() {
      super.dispose();
      _streamSubscription?.cancel();
    }

}
