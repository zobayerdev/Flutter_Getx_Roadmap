import 'package:flutter/material.dart';
import 'package:flutter_gtx_roadmap/dashboard.dart';
import 'package:get/get.dart';

class HeightScreen extends StatefulWidget {
  var name;
  HeightScreen({super.key, this.name});

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          Get.arguments[0],
          style: const TextStyle(fontSize: 16),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.to(Dashboard());
          },
        ),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: Get.height * 0.1,
            width: Get.width * 0.5,
            color: Colors.green,
            child: Text(
              "Container Screen",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            alignment: Alignment.center,
          ),
          Container(
            height: Get.height * 0.1,
            width: Get.width * 0.5,
            color: Colors.red,
            child: Text(
              "Container Screen",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
