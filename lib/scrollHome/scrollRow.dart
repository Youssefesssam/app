
import 'package:ch/themeProvider/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ui/screens/tabs/tab1.dart';
import '../ui/screens/tabs/tab2.dart';
import '../ui/screens/tabs/tab3.dart';



class ScrollRow extends StatelessWidget {
  String pathPic ;int num;
  ScrollRow(this.pathPic,this.num);
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
