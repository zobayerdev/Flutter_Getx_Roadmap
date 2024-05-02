import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangugageApps extends StatefulWidget {
  const LangugageApps({super.key});

  @override
  State<LangugageApps> createState() => _LangugageAppsState();
}

class _LangugageAppsState extends State<LangugageApps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'language localization',
          style: TextStyle(fontSize: 16),
        ),
        toolbarHeight: 45,
        elevation: 25,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              title: Text('question'.tr),
              subtitle: Text('name'.tr),
              leading: const Icon(Icons.person),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('en', 'US'));
                  },
                  child: Text("English"),
                ),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('bn', 'BD'));
                  },
                  child: Text("Bangla"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
