import 'package:b201_app/screens/dashboard/dashboard_binding.dart';
import 'package:b201_app/screens/dashboard/dashboard_screen.dart';
import 'package:b201_app/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'B201 App',
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => LoginScreen(),
        ),
        GetPage(
          name: '/home',
          page: () => DashboardScreen(),
          binding: DashboardBinding(),
        )
      ],
    );
  }
}
