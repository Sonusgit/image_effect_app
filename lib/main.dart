import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main()async{
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
              onTertiary: Colors.redAccent, 
              primaryContainer: Colors.blueGrey.shade600,
               onPrimaryContainer: Colors.amberAccent, 
               inversePrimary: Colors.pinkAccent,
                secondaryContainer: Colors.yellowAccent.shade700, 
                onSecondaryContainer: Colors.tealAccent.shade700,
                tertiaryContainer: Colors.orangeAccent.shade700,
                onTertiaryContainer: Colors.brown, 
                secondary: Colors.indigoAccent.shade700,
                 onSecondary: Colors.white,
                  error: Colors.redAccent, 
                  onError: Colors.white, 
                  surface: Colors.white, 
                  onSurface: Colors.deepOrangeAccent,)
        ),
        home: Scaffold(
          appBar: AppBar(title:Text("color scheme"),),
          body: Center(child: Container(color: Colors.blueGrey.shade900,height: 200,width: 200,),),
        )
    );
  }
}