import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: const Text(
          "Snack Bar",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Flutter",
            "It's Getx Snack Bar!",
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            shouldIconPulse: true,
            snackPosition: SnackPosition.TOP,
            duration: const Duration(seconds: 3),
          );
        },
        child: const Icon(Icons.notifications),
      ),
    );
  }
}
