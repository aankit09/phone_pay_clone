import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'bottom_navigation.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final defaultPintTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: TextStyle(fontSize: 22, color: Colors.black),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey[800],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.question_mark_rounded,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Login As',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/images/pay.png',
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 20),
              child: Text(
                'Enter Your 4 Digit Password',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Pinput(
                  length: 4,
                  defaultPinTheme: defaultPintTheme,
                  focusedPinTheme: defaultPintTheme.copyWith(
                    decoration: defaultPintTheme.decoration!.copyWith(
                      border: Border.all(color: Colors.purple),
                    ),
                  ),
                  onCompleted: (pin) {
                    debugPrint(pin);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                  }),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: Color(0xff6739B7),
                ),
                label: const Text(
                  'Forgot Password? Try Again',
                  style: TextStyle(color: Colors.purple, fontSize: 16),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
