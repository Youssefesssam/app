import 'package:ch/ui/utilites/appcolor.dart';
import 'package:flutter/material.dart';
import '../dataDetails/Scrool.dart';
import '../dataDetails/scroll1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routName ="homeScreen";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assetes/background.jpeg"),
            fit: BoxFit.fill
          )
      ),
        child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Row(
                  children: [
                    Container(
                      margin:EdgeInsets.all(20),
                      child:
                      CircleAvatar(backgroundColor: AppColors.primiary4,radius: 35,)
                     ),
                    const Column(
                      children: [
                        Text("name",style: TextStyle(fontSize: 25),),
                        Text("acount",style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.control_point_sharp),
              ]
            ),
          Container(color: AppColors.primiary2,height: 4,width: 300,),


           Expanded(
             flex: 1,
             child: ListView.builder(
             scrollDirection: Axis.horizontal,
               itemCount: 100,
                itemBuilder:(context, index) {
                  return const Row(
                    children: [
                      Scrool1()
                    ],
                  ) ;
                }
                ),
           ),

            Container(padding: EdgeInsets.all(10),alignment: Alignment.topLeft,child: Text("data",style: TextStyle(fontSize:30),)),

            Expanded(
              flex: 4,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 100,
                  itemBuilder:(context, index) {
                    return const Column(
                      children: [
                        Scrool()
                      ],
                    ) ;
                  }
              ),
            ),

      ]
        )
      ),
    );
  }
}
