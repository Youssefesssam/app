import 'package:flutter/material.dart';

import '../ui/utilites/appcolor.dart';

class Scrool1 extends StatelessWidget {
  const Scrool1({super.key});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.primiary4,
        ),
        height: 100,width: 100,
      ),
    );
  }

}
