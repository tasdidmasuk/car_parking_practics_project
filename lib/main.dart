import 'package:flutter/material.dart';
import 'package:practics_project1/pages/auth_pages/forgetotp.dart';
import 'package:practics_project1/pages/auth_pages/forgetpassword.dart';
import 'package:practics_project1/pages/auth_pages/login.dart';
import 'package:practics_project1/pages/auth_pages/numbervari2.dart';
import 'package:practics_project1/pages/auth_pages/numbervari3.dart';
import 'package:practics_project1/pages/auth_pages/numberverification.dart';
import 'package:practics_project1/pages/auth_pages/restpass.dart';
import 'package:practics_project1/pages/auth_pages/signup.dart';
import 'package:practics_project1/pages/onbording/page1.dart';
import 'package:practics_project1/pages/onbording/page2.dart';
import 'package:practics_project1/pages/onbording/page3.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Restpass(),
    );
  }
}
