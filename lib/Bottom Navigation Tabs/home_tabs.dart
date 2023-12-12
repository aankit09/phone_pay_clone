import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:phone_pay_clone/widgets/advertiesment_ads.dart';
import 'package:phone_pay_clone/widgets/transfer_card.dart';
import 'package:phone_pay_clone/widgets/upi_light.dart';

import '../widgets/alert_history.dart';
import '../widgets/myupi_id.dart';

class HomeTabs extends StatefulWidget {
  const HomeTabs({super.key});

  @override
  State<HomeTabs> createState() => _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AdvertiesmentAds(),
            TransferCard(),
            MyUpiId(),
            AlertHistory(),
            UpiLight(),
            AdvertiesmentAds(),
            TransferCard(),
            MyUpiId(),
            AlertHistory(),
            UpiLight(),
          ],
        ),
      ),
    );
  }
}
