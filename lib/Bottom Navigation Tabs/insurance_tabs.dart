import 'package:flutter/material.dart';
import 'package:phone_pay_clone/utils/const_color.dart';

import '../widgets/insure_vehicle.dart';
import '../widgets/other_insurances.dart';

class InsuranceTabs extends StatefulWidget {
  const InsuranceTabs({super.key});

  @override
  State<InsuranceTabs> createState() => _InsuranceTabsState();
}

class _InsuranceTabsState extends State<InsuranceTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            InsureVehicle(),
            OtherInsurance(),
          ],
        ),
      ),
    );
  }
}
