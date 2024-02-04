import 'package:client_pro/core/reusable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewCategories extends StatelessWidget {
  const GridViewCategories({super.key, required this.containerContent,required this.onTap});
  final String containerContent;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return  SliverGrid(
            delegate: SliverChildBuilderDelegate(

              childCount: 20,
              (context, index) => GestureDetector(
                onTap:onTap ,
                child: Container(
                color: Reusable.reuseColor,
                child: Center(
                  child: Text(
                    ' $containerContent $index',style: const TextStyle(color: Colors.white),
                    )
                    )
                    ,),
              ) 
              ),
           gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 9/2,
            mainAxisSpacing: 10.0.sp,
            crossAxisCount: 2,crossAxisSpacing: 35.sp))
          ;
  }
}