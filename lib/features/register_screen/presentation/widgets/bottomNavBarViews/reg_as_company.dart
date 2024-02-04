import 'package:client_pro/core/reusable.dart';
import 'package:client_pro/features/register_screen/presentation/widgets/addImage/add_image_view_as_company.dart';
import 'package:client_pro/features/register_screen/presentation/widgets/custom_text_field.dart';
import 'package:client_pro/features/sign_in_screen/presentation/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterAsCompany extends StatefulWidget {
  const RegisterAsCompany({super.key,});

  @override
  State<RegisterAsCompany> createState() => _RegisterAsClientState();
   
}
bool isSeen=false;
class _RegisterAsClientState extends State<RegisterAsCompany> {
  @override
  Widget build(BuildContext context) {
    return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: FractionalOffset.topLeft,
                child: Text('Sign Up',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),
            const AddImageViewAsCompany(),
            SizedBox(height: 20.sp,),
           const CustomTextField(
            valTrue: false,
            obscureText: false,
            hinttext: 'Enter your Comapny Name',prefixIcon: Icon(Icons.note_alt_outlined),),
           SizedBox(height: 20.sp,),
           const CustomTextField(
            valTrue: false,
            obscureText: false,
            hinttext: 'Enter your Company Email',prefixIcon: Icon(Icons.email),keyboardType: TextInputType.emailAddress),
           SizedBox(height: 20.sp,),
           const CustomTextField(
            valTrue: false,
            obscureText: false,
            hinttext: 'Enter your Company Number',prefixIcon: Icon(Icons.phone_android),keyboardType: TextInputType.phone,),
           SizedBox(height: 20.sp,),
            CustomTextField(
              valTrue: false,
              obscureText:  isSeen? false:true,
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
              child: TextButton(onPressed: (){}, child: const Text('Sign Up',style: TextStyle(color: Colors.white),))
              ),
              GestureDetector(
                 onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const SignInVieww(),));
                },
                child: Text.rich(
                  TextSpan(text: 'Have an Account?..',
                  children:[
                    TextSpan(
                      text: 'Log In',style: TextStyle(fontWeight:FontWeight.bold,color: Reusable.reuseColor))] )
                ),
              )

            ],
          );
  }
}