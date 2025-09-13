// class SplashController extends GetxController {
//   final _connectivity = Connectivity();
//   final RxBool isConnected = false.obs;
  
//   @override
//   void onInit() {
//     super.onInit();
//     checkInternetAndNavigate();
//   }
  
//   Future<void> checkInternetAndNavigate() async {
//     final result = await _connectivity.checkConnectivity();
//     isConnected.value = result != ConnectivityResult.none;
    
//     if (isConnected.value) {
//       await initializeAds();
//       Get.offNamed(Routes.HOME);
//     } else {
//       showInternetDialog();
//     }
//   }
// }