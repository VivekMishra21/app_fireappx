import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:app_fireappx/coin.dart';
import 'package:app_fireappx/profile.dart';
import 'package:app_fireappx/rewards.dart';
import 'package:http/http.dart';
import 'package:app_fireappx/variable.dart';
import 'package:app_fireappx/response/fectDataResponse.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  Future<void> getApi() async {
    final response = await get(Uri.parse('https://ajanitech.com/test/chat-app-x/user-1.json'));

    if (response.statusCode == 200) {
      print('${response.statusCode}');
      Map<String, dynamic> data = jsonDecode(response.body);
      setState(() {
        data1 = FetchdataResponse.fromJson(data) ;
      });
    } else {


    }
  }
  @override
  void initState() {
    // TODO: implement initState

    getApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                'FireAppX',
                style: TextStyle(color: Colors.white,fontSize: 30),
              ),
              SizedBox(
                width: 150,
              ),
              Container(

                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/image1.jpeg',width: 30,height: 20,),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${data1?.profile?.coins}',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          backgroundColor:Colors.blue.shade500,
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CustomProfile(),

              const SizedBox(
                height: 10,
              ),
              CustomRewards(rewards: data1?.rewards),
              const SizedBox(
                height: 10,
              ),
              CustomCoins(packs: data1?.packs,)
            ],
          ),
        ),
      ),
    );
  }
}
