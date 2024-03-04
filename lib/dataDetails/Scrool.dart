import 'package:ch/screens/data.dart';
import 'package:flutter/material.dart';

import '../ui/utilites/appcolor.dart';

class Scrool extends StatelessWidget {
  const Scrool({super.key});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: (){
        Navigator.pushNamed(context, Data.routNama,);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: AppColors.primiary,
        ),
        margin: EdgeInsets.all(10),
        height: 200,
        width: 350,
        
      ),

    );
  }

}
