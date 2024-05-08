import 'package:flutter/material.dart';
import 'package:flutter_gtx_roadmap/user_panel/login_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController controller = Get.put(LoginController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Login with GetX",
          style: TextStyle(fontSize: 16),
        ),
        toolbarHeight: 45,
        elevation: 25,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(
                hintText: 'password',
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                controller.loginApi();
              },
              child: Container(
                height: 45,
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Text(
            "user these email and password",
          ),
          SizedBox(
            height: 10,
          ),
          Text("Email:eve.holt@reqres.in"),
          SizedBox(
            height: 10,
          ),
          Text("pass:cityslicka"),
        ],
      ),
    );
  }
}
