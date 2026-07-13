import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';

// Define AppColors to provide primaryColor used by the Theme
class AppColors {
  static const Color primaryColor = Color(0xFF6750A4);
}



void main(){
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),

    // router
    routes: {
      '/': (context) => HomeScreen(),
      '/Profile': (context) => ProfileScreen(),
    },

    initialRoute: '/Profile',
      title: 'My Flutter App',
    );
  }
}