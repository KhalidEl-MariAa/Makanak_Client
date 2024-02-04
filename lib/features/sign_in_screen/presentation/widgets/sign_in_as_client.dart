import 'package:client_pro/core/reusable.dart';
import 'package:client_pro/features/mainScreen/presentation/mainScreen.dart';
import 'package:client_pro/features/register_screen/presentation/register.dart';
import 'package:client_pro/features/register_screen/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInAsClient extends StatefulWidget {
  const SignInAsClient({super.key,});

  @override
  State<SignInAsClient> createState() => _SignInAsClientState();
   
}
bool isSeen=false;
GlobalKey<FormState> globalKey= GlobalKey();
TextEditingController phonenumbercont=TextEditingController();

class _SignInAsClientState extends State<SignInAsClient> {
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: globalKey,
      child: Column(
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
              CustomTextField(
              controller: phonenumbercont,

              valTrue: true,
              validator: (value) {
        if (value == null || value.isEmpty) {
                  return 'Please enter your Phone Number';
                }
        else if (phonenumbercont.text.length<11 && phonenumbercont.text.length>11){
              return 'Must be 11 numbers';
        }
                return null;
      },
              obscureText: false,
              hinttext: 'Enter your Phone Number',prefixIcon: const Icon(Icons.phone_android),keyboardType: TextInputType.phone,),
             SizedBox(height: 20.sp,),
              CustomTextField(
                valTrue: true,
                validator: (value) {
        if (value == null || value.isEmpty) {
                  return 'Please enter your Password';
                }
                return null;
      },
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
                child: TextButton(
                  onPressed: (){
                    if(globalKey.currentState!.validate()){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen(),));
                    }
                   }
                  , child: const Text('Log In',style: TextStyle(color: Colors.white),))
                ),
                GestureDetector(
                   onTap: () {
                    if(globalKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const RegisterView(),));
                    }
                    
                  },
                  child: Text.rich(
                    TextSpan(text: "Don't have an Account?..",
                    children:[
                      TextSpan(
                        text: 'Sign Up',style: TextStyle(fontWeight:FontWeight.bold,color: Reusable.reuseColor))] )
                  ),
                )
      
              ],
            ),
    );
  }
}