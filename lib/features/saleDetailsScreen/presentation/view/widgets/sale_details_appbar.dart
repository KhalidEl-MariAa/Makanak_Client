import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalesDetailsScreenAppBar extends StatelessWidget {
  const SalesDetailsScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
       centerTitle: true,
            title: Text('Rexona Sale',
            style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),)
    );
  }
}