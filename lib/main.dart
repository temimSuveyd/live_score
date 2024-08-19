import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score/core/bindings/AppBindinges.dart';
import 'package:live_score/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Appbindinges(),
      getPages: getPages,
    );
  }
}
