
import 'package:ch/themeProvider/themeProvider.dart';
import 'package:ch/ui/utilites/appPic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../ui/screens/data.dart';
import '../ui/utilites/appcolor.dart';

class ScrollColumn extends StatelessWidget {
  String pic;
  ScrollColumn(this.pic);

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider=Provider.of(context);
    return
       Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: (){
                    Navigator.pushNamed(context, Data.routeNama,);

                },
                child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10,bottom: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                    ),

                    child:CircleAvatar(backgroundImage:  AssetImage(pic),radius: 25,)),
              ),
              SizedBox(width:15 ,),
              Container(height: 40,width: 60,child: Text("Name",style: TextStyle(fontSize: 20,color: themeProvider.colmn),))
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: themeProvider.colmn,
            ),
            margin: EdgeInsets.only(top: 10,bottom: 10),
            height: 480,
            width: double.infinity,
               child: Image.asset(pic,fit: BoxFit.cover,),
          ),
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 3,left: 8,bottom: 5,),
              child:  Row(
                children: [
                  Container(height: 30,width: 30,child: Image.asset(AppPic.heart),color: Colors.red,),
                  SizedBox(width: 5,),
                  Icon(Icons.access_alarms,size: 35,),
                  SizedBox(width: 5,),
                  Icon(Icons.access_alarms,size: 35,),
                ],
              ),)
        ],

    );
  }

}
