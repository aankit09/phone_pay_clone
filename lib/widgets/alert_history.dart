import 'package:flutter/material.dart';

import '../utils/const_color.dart';

class AlertHistory extends StatelessWidget {
  const AlertHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Card(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: ListTile(
            leading: Icon(
              Icons.car_rental,
              size: 40,
              color: ColorSelect.phonepaycolor,
            ),
            title: const Text(
              'Renew Car Insurance',
              style: TextStyle(color: Colors.red),
            ),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Renew',
              ),
            ),
            subtitle: const Text('........Expiring Soon'),
          ),
        ),
      ),
    );
  }
}
