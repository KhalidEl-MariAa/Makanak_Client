import 'package:client_pro/core/reusable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyBottomNavBar extends StatelessWidget {
  const CompanyBottomNavBar({super.key,required this.currentindex,required this.onTap});
 final int currentindex;
 final void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          onTap: onTap,
          backgroundColor: Reusable.reuseColor,
          currentIndex: currentindex,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold) ,
          unselectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic,),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket,size: currentindex==0?30.sp:20.sp,),label: 'Items'),
          BottomNavigationBarItem(icon: Icon(Icons.percent,size: currentindex==1?30.sp:20.sp,),label: 'Sales')
        ]);
  }
}