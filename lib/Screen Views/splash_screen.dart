import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phone_pay_clone/Screen%20Views/login_screen.dart';

class SplashPhonePay extends StatefulWidget {
  const SplashPhonePay({super.key});

  @override
  State<SplashPhonePay> createState() => _SplashPhonePayState();
}

class _SplashPhonePayState extends State<SplashPhonePay> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const PhoneLogin(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/phonepay.png',
              height: 250,
              width: 250,
            ),
          ],
        ),
      ),
    );
  }
}
