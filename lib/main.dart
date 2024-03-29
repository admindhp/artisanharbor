import 'package:artisanharbour/screens/HomeScreen.dart';
import 'package:artisanharbour/screens/Loginpage.dart';
import 'package:artisanharbour/screens/Logintype.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: ChooseLoginTypePage(),
    );
  }
}

