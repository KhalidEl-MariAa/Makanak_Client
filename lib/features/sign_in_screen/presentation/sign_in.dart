import 'package:client_pro/core/reusable.dart';
import 'package:client_pro/features/sign_in_screen/presentation/widgets/sign_in_as_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SignInVieww extends StatefulWidget {
  const SignInVieww({super.key});

  @override
  State<SignInVieww> createState() => _SignInViewwState();
}

bool isSeen=false;

class _SignInViewwState extends State<SignInVieww> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      appBar: AppBar(
        title: Text('Log In',style: Reusable.titleStyle,),
        centerTitle: true,),
        body: Center(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.sp),
            child: const SingleChildScrollView(
              child:SignInAsClient()
              
            ),
          ),
        ),
        
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
    );
  }
}