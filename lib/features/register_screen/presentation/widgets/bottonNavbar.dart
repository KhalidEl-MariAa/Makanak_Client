import 'package:client_pro/core/reusable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterBottomNavBar extends StatelessWidget {
  const RegisterBottomNavBar({super.key,required this.currentindex,required this.onTap});
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
            icon: Icon(Icons.person_2,size: currentindex==0?30.sp:20.sp,),label: 'Sign Up as Client'),
          BottomNavigationBarItem(icon: Icon(Icons.business,size: currentindex==1?30.sp:20.sp,),label: 'Sign Up as Company')
        ]);
  }
}