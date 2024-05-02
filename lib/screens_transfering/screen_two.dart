import 'package:flutter/material.dart';
import 'package:flutter_gtx_roadmap/dashboard.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ScreenTwo extends StatefulWidget {
  var name;
  ScreenTwo({super.key, this.name});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Screen Two " + Get.arguments[1],
          style: const TextStyle(fontSize: 17),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.to(const Dashboard());
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
    );
  }
}
