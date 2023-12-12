import 'package:flutter/material.dart';
import 'package:phone_pay_clone/Screen%20Views/opt_screen.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({super.key});

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  TextEditingController username = TextEditingController();
  @override
  void initState() {
    username.text = ""; //innitail value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 20),
                  child: Image.asset(
                    'assets/images/pay.png',
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20),
                child: Text(
                  'Enter your mobile number',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 20),
                child: Text(
                  'To use BHIM UPI, please enter the mobile number\n linked to your bank account',
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: username,
                  decoration: InputDecoration(
                    prefixText: '+91 - ',
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    //   focusedBorder: myfocusborder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:  Color(0xff6739B7), // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const OtpScreen()));
                    },
                    child: const Text(
                      'Otp Send',
                      style: TextStyle(fontSize: 22),
                    )),
              ),
              const SizedBox(
                height: 80,
              ),
              Center(
                child: Image.asset(
                  'assets/images/phonepay.png',
                  height: 250,
                  width: 250,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'By proceeding you are agreeing to PhonePe',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                      children: [
                        TextSpan(
                          text: 'Terms & Conditions',
                          style: TextStyle(color: Colors.purple, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: Colors.purple,
          width: 3,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.purple,
          width: 3,
        ));
  }
}
