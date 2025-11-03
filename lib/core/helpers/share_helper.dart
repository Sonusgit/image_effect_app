import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:ui' as ui;

class ShareHelper {
 


static  Future<void> shareFilteredImage(GlobalKey key, Color currentColor) async {
  try {
    RenderRepaintBoundary boundary =
        key.currentContext!.findRenderObject() as RenderRepaintBoundary;

    ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData!.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final filePath = '${tempDir.path}/filtered_image.png';
    File file = await File(filePath).writeAsBytes(pngBytes);

    Share.shareXFiles([XFile(file.path)], text: "Filtered Image");
  } catch (e) {
    print("Error sharing image: $e");
  }
}

}