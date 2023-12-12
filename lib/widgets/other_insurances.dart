import 'package:flutter/material.dart';
import 'package:phone_pay_clone/utils/const_color.dart';

class OtherInsurance extends StatelessWidget {
  const OtherInsurance({super.key});

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
                    'Other Insurances',
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
                                  Icons.mode_of_travel_outlined,
                                  color: ColorSelect.phonepaycolor,
                                  size: 30,
                                ))),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('   Travel'),
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
                        const Text('Accident'),
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
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'The international Travel Insurance plans offered by MobPay provide a range of coverage benefits. Here are some benefits of buying international Travel Insurance plans through MobPay.',
            style: TextStyle(color: Colors.grey[500]),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
