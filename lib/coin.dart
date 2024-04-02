import 'package:flutter/material.dart';

import 'package:app_fireappx/response/fectDataResponse.dart';

class CustomCoins extends StatelessWidget {
  final List<Packs>? packs;
  const CustomCoins({this.packs,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 600,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Text('Buy coins packs',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 10,
          ),
          if (packs != null)
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: packs!.map((packs) {
                return  Container(
                  height: 200,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.yellow, // Border color
                      width: 4.0, // Border width
                    ),
                  ),
                  child: Column(
                    children: [

                      Text(
                        '${packs.coins}',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/coins.jpeg',
                        width: 70,
                        height: 70,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Adjust the radius as needed
                              ),
                            ),
                            child: Text(
                              '₹ ${packs.coins}',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            )),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),


        ],
      ),
    );
  }
}
