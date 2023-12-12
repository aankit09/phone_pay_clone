import 'package:flutter/material.dart';

import '../widgets/pay_type.dart';

class PayModeTabs extends StatefulWidget {
  const PayModeTabs({super.key});

  @override
  State<PayModeTabs> createState() => _PayModeTabsState();
}

class _PayModeTabsState extends State<PayModeTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PayType(),
          ],
        ),
      ),
    );
  }
}
