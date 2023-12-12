import 'package:flutter/material.dart';

class MyUpiId extends StatelessWidget {
  const MyUpiId({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        child: Card(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.qr_code),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'My QR',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'UPI ID: abcd.efgh@ybl',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 65,
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.arrow_right),
                label: const Text(''),
              )
            ],
          ),
        ),
      ),
    );
  }
}
