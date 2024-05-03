import 'package:flutter/material.dart';
import 'package:flutter_gtx_roadmap/counter_controller.dart';
import 'package:get/get.dart';

class CounterScreens extends StatefulWidget {
  const CounterScreens({super.key});

  @override
  State<CounterScreens> createState() => _CounterScreensState();
}

class _CounterScreensState extends State<CounterScreens> {
  final CounterController controller = Get.put(CounterController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Getx Roadmap",
          style: TextStyle(fontSize: 16),
        ),
        toolbarHeight: 45,
        elevation: 25,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Center(
                child: Obx(
                  () => Text(
                    'Counter Value: ${controller.count.value}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
