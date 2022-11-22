import 'package:cpa/screenLogin/login.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    // TODO: implement initState
    _gotLoginPage();
    super.initState();
  }
  _gotLoginPage()async{
    await Future.delayed(const Duration(milliseconds: 5500));
    Navigator.pushNamed(context, "login");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:  Color.fromARGB(159, 35, 190, 241), 
      backgroundColor: Color(0xffF43397),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/images/mesho.png",
              height: 250,
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 148, 2, 185),   
              ),
            ),
          ],
        ),
      ),
    );
  }
}
