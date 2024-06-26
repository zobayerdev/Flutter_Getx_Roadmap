import 'package:flutter/material.dart';
import 'package:flutter_gtx_roadmap/app_language/language.dart';
import 'package:flutter_gtx_roadmap/dashboard.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_gtx_roadmap/height_width/height_width.dart';
import 'package:flutter_gtx_roadmap/screens_transfering/screen_two.dart';
import 'package:get/get.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        tools: const [...DevicePreview.defaultTools],
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Getx Roadmap',

      // Localization and apps language settings
      locale: const Locale('bn', 'BD'),
      translations: Languages(),
      fallbackLocale: const Locale('en', 'US'),

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Dashboard(),
      getPages: [
        GetPage(name: '/', page: () => Dashboard()),
        GetPage(name: '/screenTwo', page: () => ScreenTwo()),
        GetPage(name: '/height', page: () => HeightScreen()),
      ],
    );
  }
}
