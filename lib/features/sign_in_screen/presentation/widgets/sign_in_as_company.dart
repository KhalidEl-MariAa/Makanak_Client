import 'package:client_pro/core/reusable.dart';
import 'package:client_pro/features/register_screen/presentation/register.dart';
import 'package:client_pro/features/register_screen/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInAsCompany extends StatefulWidget {
  const SignInAsCompany({super.key,});

  @override
  State<SignInAsCompany> createState() => _SignInAsCompanyState();
   
}
bool isSeen=false;
class _SignInAsCompanyState extends State<SignInAsCompany> {
  @override
  Widget build(BuildContext context) {
    return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 90.sp,
                foregroundImage: const AssetImage('assets/makanaklogo.png')),
              SizedBox(height: 40.sp,),
              Align(
                alignment: FractionalOffset.topLeft,
                child: Text('Welcome Again!',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),
            
            SizedBox(height: 20.sp,),
           const CustomTextField(
            valTrue: false,
            obscureText: false,
            hinttext: 'Enter your Company Phone Number',prefixIcon: Icon(Icons.phone_android),keyboardType: TextInputType.phone,),
           SizedBox(height: 20.sp,),
            CustomTextField(
              valTrue: false,
              obscureText: isSeen? false:true ,
              keyboardType: TextInputType.visiblePassword,
            hinttext: 'Enter Your Password',
            prefixIcon: const Icon(Icons.key),
            suffixIcon: GestureDetector(
              onTap:() {
                isSeen=!isSeen;
                setState(() {
                  
                });
              }, 
              child: isSeen? const Icon(Icons.hide_source):const Icon(Icons.remove_red_eye),
            ),),
            
            SizedBox(height: 20.sp,),
            Container(
              width: 250.sp,
              color: Reusable.reuseColor,
              child: TextButton(onPressed: (){}, child: const Text('Log In',style: TextStyle(color: Colors.white),))
              ),
              GestureDetector(
                 onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const RegisterView(),));
                },
                child: Text.rich(
                  TextSpan(text: "Don't have an Account?..",
                  children:[
                    TextSpan(
                      text: 'Sign Up',style: TextStyle(fontWeight:FontWeight.bold,color: Reusable.reuseColor))] )
                ),
              )

            ],
          );
  }
}