import 'package:epic_rps/Screens/Home_Screen/Home_Screen.dart';
import 'package:flutter/material.dart';

class SplashScr extends StatefulWidget {
  const SplashScr({super.key});

  @override
  State<SplashScr> createState() => _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
        () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => HomeScr()));
        },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.only(top: 200,bottom: 16),
        child: Column(
          children: [
            Image.asset('assest/Group 4.png',
            ),
            SizedBox(height: 100),
            Image.asset('assest/Group 23 (1).png'),
          ],
        ),
      ),
    );
  }
}
