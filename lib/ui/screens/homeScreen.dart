import 'package:ch/ui/utilites/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../scrollHome/scrollColumn.dart';
import '../../scrollHome/scrollRow.dart';
import '../../themeProvider/themeProvider.dart';
import '../utilites/appPic.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routName ="homeScreen";
  @override
  Widget build(BuildContext context) {
     ThemeProvider themeProvider =Provider.of(context);
     List<String> pic=[AppPic.story1,AppPic.story2,
       AppPic.story3,
       AppPic.story4,
       AppPic.story5,
       AppPic.story6
     ];
    return Expanded(
      child: Container(
        decoration:   BoxDecoration(
            image: DecorationImage(
                image:themeProvider.background,
                fit: BoxFit.fill
            )
        ),
        child: Scaffold(

            backgroundColor: Colors.transparent,
            body:  Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Row(
                          children: [
                            Container(
                                margin:EdgeInsets.all(20),
                                child:
                                const CircleAvatar(backgroundColor: AppColors.primiary4,radius: 35,)
                            ),
                            const Column(
                              children: [
                                Text("name",style: TextStyle(fontSize: 25),),
                                Text("acount",style: TextStyle(fontSize: 15)),
                              ],
                            ),
                          ],
                        ),
                        const Icon(Icons.face),
                        Switch(value: themeProvider.currentMode==ThemeMode.dark, onChanged: (newValue) {
                          themeProvider.toggleTheme(newValue);
                        })]
                  ),
                  Container(color: AppColors.primiary2,height: 4,width: 300,),


                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: pic.length,
                        itemBuilder:(context, index) {
                          return  Row(
                            children: [
                              ScrollRow(pic[index],index),

                            ],
                          ) ;
                        }
                    ),
                  ),



                  Expanded(
                    flex: 6,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: pic.length,
                        itemBuilder:(context, index) {
                          return  Column(
                            children: [
                              ScrollColumn(pic[index])
                            ],
                          ) ;
                        }
                    ),
                  ),

                ]
            ),
        ),
      ),
    );
  }
}
