import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:image_effect_app/core/helpers/share_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey _globalKey = GlobalKey();

  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  List<Color> currentColors = [Color(0xff443a49)];
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  void changeColors(List<Color> colors) {
    setState(() => currentColors = colors);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("pic colors"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              ColorPicker(
                                pickerColor: pickerColor,
                                onColorChanged: changeColor,
                                showLabel: true,
                                pickerAreaHeightPercent: 0.8,
                              ),
                              MaterialPicker(
                                pickerColor: pickerColor,
                                onColorChanged: changeColor,
                                // showLabel: true, // only on portrait mode
                              ),

                              BlockPicker(
                                pickerColor: currentColor,
                                onColorChanged: changeColor,
                              ),

                              MultipleChoiceBlockPicker(
                                pickerColors: currentColors,
                                onColorsChanged: changeColors,
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("cancel"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() => currentColor = pickerColor);

                              Get.back();
                            },
                            child: Text("Done"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("pic Color"),
              ),

              SizedBox(height: 5),
              Center(
                child: RepaintBoundary(
                  key: _globalKey,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: currentColor, width: 2),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          currentColor,
                          BlendMode.hue,
                        ),
                        image: NetworkImage(
                          "https://m.media-amazon.com/images/I/31Na4uyIEyL._SY300_SX300_QL70_FMwebp_.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () => ShareHelper.shareFilteredImage(_globalKey, currentColor),
                child: Text("Share Filtered Image"),
              )

            ],
          ),
        ),
      ),
    );
  }
}
