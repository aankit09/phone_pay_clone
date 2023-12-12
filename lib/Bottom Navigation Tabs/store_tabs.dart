import 'package:flutter/material.dart';
import 'package:phone_pay_clone/utils/const_color.dart';

class StoreTabs extends StatefulWidget {
  const StoreTabs({super.key});

  @override
  State<StoreTabs> createState() => _StoreTabsState();
}

class _StoreTabsState extends State<StoreTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'https://whiplash.com/wp-content/uploads/603d58290f91c0f8b140ad04_qr-codes-min.jpg',
              ),
            ),
          ),
          const Text(
            'Find Your Favourite Stores On the QR Scanner',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: ColorSelect.phonepaycolor,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.qr_code_scanner_rounded),
              label: const Text('Open QR Scanner'),
            ),
          )
        ],
      ),
    );
  }
}
