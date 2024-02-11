import 'package:client_pro/features/register_screen/presentation/widgets/reg_as_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     
         Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.sp),
          child: const SingleChildScrollView(
            child:RegisterAsClient()
            
          ),
        )
        
         //BottomNavigationBar(
        //   onTap: (value) {
        //     currentindex=value;
        //     setState(() {
              
        //     });
        //   },
        //   backgroundColor: Reusable.reuseColor,
        //   currentIndex: currentindex,
        //   selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold) ,
        //   unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic,),
        //   unselectedItemColor: Colors.white,
        //   selectedItemColor: Colors.black,
        //   items: [
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.person_2,size: currentindex==0?30.sp:20.sp,),label: 'Sign Up as Client'),
        //   BottomNavigationBarItem(icon: Icon(Icons.business,size: currentindex==1?30.sp:20.sp,),label: 'Sign Up as Company')
        // ]),
    ;
  }
}