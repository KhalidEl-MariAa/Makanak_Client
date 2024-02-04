import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemsofCategoryAppBar extends StatelessWidget {
  const ItemsofCategoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
            title: Column(children: [
              Text('Any contact will be on your number ',style: TextStyle(fontSize: 15.sp,color: Colors.black.withOpacity(0.5)),),
              Text('01065889247',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)
            ],),
            leading: const CircleAvatar(
                  foregroundImage:  AssetImage('assets/makanaklogo.png',)),
          );
  }
}