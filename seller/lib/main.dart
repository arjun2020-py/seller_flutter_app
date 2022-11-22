import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:seller/LoginScrren/view/login_scrren.dart';
import 'package:seller/SiginupScreen/view/siginup.dart';
import 'package:seller/dashboad/view/dashboad.dart';
import 'package:seller/home/view/home_screen.dart';
import 'package:seller/home/view/product_details.dart';
import 'package:seller/home/view/product_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        "Login": (context) => LoginScreen(),
        "Register": (context) => SiginupScreen(),
        "Dashboad": (context) => DashboadScreen(),
        "Home": (context) => HomeScreen(),
        'productHome': (context) => TrendingProduct()
      },
    );
  }
}
