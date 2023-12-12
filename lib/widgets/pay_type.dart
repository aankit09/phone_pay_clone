import 'package:flutter/material.dart';

import '../utils/const_color.dart';

class PayType extends StatelessWidget {
  const PayType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 120,
          width: double.infinity,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Payment Methods',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.home_mini_rounded,
                                  color: ColorSelect.phonepaycolor,
                                  size: 30,
                                ))),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Bank Account'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.person_2_rounded,
                                  color: ColorSelect.phonepaycolor,
                                  size: 30,
                                ))),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Debit & Credit Card'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.security_rounded,
                                  color: ColorSelect.phonepaycolor,
                                  size: 30,
                                ))),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Super Top-Up'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.shop_two_rounded,
                                  color: ColorSelect.phonepaycolor,
                                  size: 30,
                                ))),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('    Shop'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
