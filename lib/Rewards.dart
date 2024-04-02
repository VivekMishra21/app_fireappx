import 'package:flutter/material.dart';
import 'package:app_fireappx/variable.dart';
import 'package:app_fireappx/response/fectDataResponse.dart';

class CustomRewards extends StatelessWidget {
  final List<Rewards>? rewards;

  const CustomRewards({Key? key, this.rewards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(height: 10,),


          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Daily rewards',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          if (rewards != null)
            Column(
              children: rewards!.map((reward) {
                return Container(
                  height: 80,
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Color(0xffB4D2ECFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            reward.title ?? '',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            reward.summary ?? '',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        '+ ${reward.coins}',
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/image1.jpeg',
                        width: 30,
                        height: 20,
                      ),
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
