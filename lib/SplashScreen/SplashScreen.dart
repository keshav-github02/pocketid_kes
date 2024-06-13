import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pocketid_kes/Register/register.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
              transitionDuration: const Duration(seconds: 2),
              transitionsBuilder: ((context, animation, animationtime, child) {
                animation = CurvedAnimation(
                    parent: animation, curve: Curves.elasticInOut);
                return ScaleTransition(
                  scale: animation,
                  alignment: Alignment.center,
                  child: child,
                );
              }),
              pageBuilder: ((context, animation, animationtime) {
                return const Register();
              }),),);
    });
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 55, 14, 201),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_balance_outlined,
              color: Colors.white,
              size: 80,
            ),
            Text(
              "Pocket_ID",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 150,
              child: LinearProgressIndicator(
                backgroundColor: Color.fromARGB(82, 158, 158, 158),
                minHeight: 6,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
