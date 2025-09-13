// class HomeController extends GetxController {
//   final ImagePicker _picker = ImagePicker();
  
//   Future<void> selectImage(ImageSource source) async {
//     final XFile? image = await _picker.pickImage(source: source);
//     if (image != null) {
//       Get.toNamed(Routes.EDITOR, arguments: image.path);
//     }
//   }
// }