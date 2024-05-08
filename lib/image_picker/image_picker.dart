import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_gtx_roadmap/image_picker/imagepicker_controller.dart';
import 'package:get/get.dart';

class ImagePickers extends StatefulWidget {
  const ImagePickers({super.key});

  @override
  State<ImagePickers> createState() => _ImagePickersState();
}

class _ImagePickersState extends State<ImagePickers> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Image Picker with Getx",
          style: TextStyle(fontSize: 16),
        ),
        toolbarHeight: 45,
        elevation: 25,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () {
            return Column(
              children: [
                CircleAvatar(
                  backgroundImage: controller.imagePath.isNotEmpty
                      ? FileImage(File(controller.imagePath.toString()))
                      : null,
                ),
                TextButton(
                  onPressed: () {
                    controller.getImage();
                  },
                  child: const Text("Image Picker"),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
