import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  // post korar jonno eivabe code likhte hobe
  void loginApi() async {
    final response = await post(
      Uri.parse('https://reqres.in/api/login'),
      body: {
        'email': emailController.value.text,
        'password': passwordController.value.text,
      },
    );

    var data = jsonDecode(response.body);
    print(response.statusCode);
    print(data);

    if (response.statusCode == 200) {
      Get.snackbar(
        'Success',
        'Login Success',
        snackPosition: SnackPosition.TOP,
        colorText: Colors.black,
      );
    } else {
      Get.snackbar(
        'Error',
        'Login Failed',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.black,
      );
    }
  }
}
