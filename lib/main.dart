import 'package:flutter/material.dart';
import 'package:healthcare_app/screens/welcome_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Healthcare app',
     home: WelcomeScreen(),
   );
  }
}
