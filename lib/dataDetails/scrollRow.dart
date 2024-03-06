import 'package:ch/screens/tab1.dart';
import 'package:ch/screens/tab2.dart';
import 'package:ch/screens/tab3.dart';
import 'package:ch/themeProvider/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Scrool1 extends StatelessWidget {
  String pathPic ;int num;
  Scrool1(this.pathPic,this.num);
  List<Widget> tabs =[tab1(),tab2(),tab3()];
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider =Provider.of(context);
    return  InkWell(
      onTap: (){
       Navigator.pushNamed(context,"${tabs[num]}");
      },
      child: buildContainer(pathPic),
    );
  }

  Container buildContainer(String path) {
    return Container(
      margin:  EdgeInsets.all(10),
      height: 80,width: 80,
      child: CircleAvatar(backgroundImage: AssetImage(path),)
    );
  }




}
