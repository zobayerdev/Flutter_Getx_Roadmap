import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class BottomSheets extends StatefulWidget {
  const BottomSheets({super.key});

  @override
  State<BottomSheets> createState() => _BottomSheetsState();
}

class _BottomSheetsState extends State<BottomSheets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Alert dialog & Bottom sheet",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Alert Dialog"),
            subtitle: const Text("This is alert dialog"),
            onTap: () => {
              Get.defaultDialog(
                title: "Alert Dialog",
                content: const Text("Are you want to change theme?"),
                onConfirm: () => {
                  Get.changeTheme(ThemeData.dark()),
                },
                onCancel: () => {
                  Get.changeTheme(ThemeData.light()),
                },
              ),
            },
          ),
          ListTile(
            title: const Text("Bottom Sheet"),
            subtitle: const Text("This is bottom sheets"),
            onTap: () => {
              Get.bottomSheet(
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple,
                  ),
                  child: Column(
                    children: [
                      const ListTile(
                        title: Text(
                          "Change Theme",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          "Light Theme",
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: const Icon(
                          Icons.light_mode,
                          color: Colors.white,
                        ),
                        onTap: () => {
                          Get.changeTheme(ThemeData.light()),
                        },
                      ),
                      ListTile(
                        title: const Text(
                          "Dark Theme",
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: const Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        ),
                        onTap: () => {
                          Get.changeTheme(ThemeData.dark()),
                        },
                      ),
                    ],
                  ),
                ),
              ),
            },
          ),
        ],
      ),
    );
  }
}
