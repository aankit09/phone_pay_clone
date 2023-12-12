import 'package:flutter/material.dart';

class UpiLight extends StatelessWidget {
  const UpiLight({super.key});

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://images.news9live.com/h-upload/2022/03/21/259414-upi.jpg',
                  height: 30,
                  width: 60,
                ),
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
                  'PIN-less Payment',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 60,
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
