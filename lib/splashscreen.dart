import 'package:flutter/material.dart';
import 'package:tamayoz_task/homepage.dart';
import 'package:tamayoz_task/inteface.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(52, 152, 219, 20),
      body: Center(
        child: Image.asset(
          'assets/books.png',
          height: MediaQuery.of(context).size.width * 0.3,
          color: Colors.white,
        ),
      ),
    );
  }
}
