import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:image_effect_app/core/helpers/network_controller.dart';
import 'package:image_effect_app/routes/app_pages.dart';
import 'package:image_effect_app/routes/app_routes.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(NetworkController());
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "project",
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme(brightness: Brightness.light,
           primary: Colors.deepPurpleAccent, 
           onPrimary:Colors.white,
            background: Colors.grey.shade50,
            onBackground: Colors.black,
             tertiary: Colors.greenAccent,
              onTertiary: const Color.fromARGB(255, 226, 255, 82), 
              primaryContainer: Colors.blueGrey.shade600,
               onPrimaryContainer: Colors.amberAccent, 
               inversePrimary: Colors.pinkAccent,
                secondaryContainer: Colors.yellowAccent.shade700, 
                onSecondaryContainer: Colors.tealAccent.shade700,
                tertiaryContainer: const Color.fromARGB(255, 34, 255, 0),
                onTertiaryContainer: Colors.brown, 
                secondary: Colors.indigoAccent.shade700,
                 onSecondary: Colors.white,
                  error: const Color.fromARGB(255, 82, 255, 108), 
                  onError: Colors.white, 
                  surface: Colors.white, 
                  onSurface: const Color.fromARGB(255, 96, 255, 64),)
        ),
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
        
    );
  }
}