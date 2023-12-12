import 'package:flutter/material.dart';
import 'package:phone_pay_clone/Bottom%20Navigation%20Tabs/history_tabs.dart';
import 'package:phone_pay_clone/Bottom%20Navigation%20Tabs/insurance_tabs.dart';
import 'package:phone_pay_clone/Bottom%20Navigation%20Tabs/store_tabs.dart';
import 'package:phone_pay_clone/Bottom%20Navigation%20Tabs/paymode_tabs.dart';

import '../Bottom Navigation Tabs/home_tabs.dart';
import '../utils/const_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // Tabs
  final tabs = [
    const HomeTabs(),
    const StoreTabs(),
    const InsuranceTabs(),
    const PayModeTabs(),
    const HistoryTabs()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // App Bar
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Color(0xff6739B7),
          // Leading
          leading: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15), // Image border
                    child: SizedBox.fromSize(
                      // size: Size.fromRadius(48), // Image radius
                      child: Image.network(
                        'https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250',
                        //  fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 30,
                  left: 40,
                  child: Image.network(
                    'https://thumbs.dreamstime.com/z/india-paper-flag-patriotic-background-national-138241478.jpg',
                    fit: BoxFit.cover,
                    height: 20,
                    width: 20,
                  ))
            ],
          ),
          //Title
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      'Add Address',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              const Text(
                'Barwani District',
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
          //Action
          actions: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: IconButton(
                icon: const Icon(
                  Icons.qr_code_scanner_rounded,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: IconButton(
                icon: const Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: IconButton(
                icon: const Icon(
                  Icons.question_mark_rounded,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        // Bottom Navigation
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorSelect.phonepaycolor,
          fixedColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          selectedFontSize: 18,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: 'Home',
                backgroundColor: ColorSelect.phonepaycolor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.shopping_bag),
                label: 'Store',
                backgroundColor: ColorSelect.phonepaycolor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.car_repair_outlined),
                label: 'Insurance',
                backgroundColor: ColorSelect.phonepaycolor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.currency_rupee),
                label: 'Pay Mode',
                backgroundColor: ColorSelect.phonepaycolor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.history_toggle_off),
                label: 'History',
                backgroundColor: ColorSelect.phonepaycolor),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: tabs[_currentIndex]);
  }
}
