import 'package:flutter/material.dart';

import 'constant/app_colors.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';

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