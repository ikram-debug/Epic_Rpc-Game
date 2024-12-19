import 'package:epic_rps/Screens/Splash_Screnn/Splash_Screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ikram());
}

class ikram extends StatelessWidget {
  const ikram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScr()
    );
  }
}
