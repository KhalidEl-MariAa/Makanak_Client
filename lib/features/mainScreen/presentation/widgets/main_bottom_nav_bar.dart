import 'package:client_pro/core/reusable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({super.key, required this.currentIndex,this.onTap});
final int currentIndex;
final void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
        backgroundColor: Reusable.reuseColor,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold) ,
          unselectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic,),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: currentIndex==0?30.sp:20.sp),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications,size: currentIndex==1?30.sp:20.sp),label: 'notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.email,size: currentIndex==2?30.sp:20.sp),label: 'Contact Us'),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin,size: currentIndex==3?30.sp:20.sp),label: 'Profile'),

          
        ]);
  }
}