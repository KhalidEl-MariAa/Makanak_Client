import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
            title: Column(children: [
              Text('Hi,welcome back',style: TextStyle(fontSize: 15.sp,color: Colors.black.withOpacity(0.5)),),
              Text('Khalid El-Maria',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)
            ],),
            leading: const CircleAvatar(
                  foregroundImage:  AssetImage('assets/makanaklogo.png',)),
          );
  }
}