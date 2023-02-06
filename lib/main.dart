import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sushi_app/helper/routes.dart';
import 'package:sushi_app/view/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sushi App',
      getPages: Routes(),
      initialRoute: '/onboarding',
    );
  }
}

