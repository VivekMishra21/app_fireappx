import 'package:flutter/material.dart';
import 'package:app_fireappx/variable.dart';
class CustomProfile extends StatelessWidget {
  const CustomProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg-gold.png")
            ),
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child:Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 50,
                    backgroundImage: NetworkImage('${data1?.profile?.photo}')

                ),
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${data1?.profile?.name}",style:
                      TextStyle(color: Colors.black,
                      fontSize: 20),),
                    Text('${data1?.profile?.phone}')
                  ],
                ),
                 SizedBox(width: 50,),
                Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade900,

                    borderRadius: BorderRadius.circular(20.0)

                  ),
                  child: Center(
                    child: Text("Edit",style: TextStyle(
                      color: Colors.white,
                      fontSize:15
                    ),),
                  ),
                )
              ],
            ),
          ),
        ),

        // Membership container
        Container(
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset('assets/images/star.jpeg',height: 60,width: 50,),
              SizedBox(
                width: 20,
              ),
              Text(
                'Manage your membership',
                style: TextStyle(color: Colors.yellow,fontSize: 20,),
              ),
              SizedBox(
                width: 30,
              ),
              Icon(Icons.arrow_forward_ios,color: Colors.yellow,)
            ],
          ),
        ),
      ],
    );

  }
}
