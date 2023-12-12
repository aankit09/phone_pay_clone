import 'package:flutter/material.dart';

import '../utils/const_color.dart';

class InsureVehicle extends StatelessWidget {
  const InsureVehicle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 280,
          width: double.infinity,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Insure Your Vehicle',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: ListTile(
                          leading: Icon(
                            Icons.bike_scooter_rounded,
                            color: ColorSelect.phonepaycolor,
                          ),
                          title: const Text('Bike'),
                          subtitle: const Text(
                            'From \$1.5/day',
                          ),
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: ColorSelect.phonepaycolor,
                      width: 50,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Expanded(
                      child: Center(
                        child: ListTile(
                          leading: Icon(
                            Icons.bike_scooter_rounded,
                            color: ColorSelect.phonepaycolor,
                          ),
                          title: const Text('Bike'),
                          subtitle: Text('From \$1.5/day'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 140,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text('Or, provide vehicle registration number'),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 18.0, right: 18.0, top: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                hintText: "Eg. MP 00XX0000",
                                fillColor: Colors.white70,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
