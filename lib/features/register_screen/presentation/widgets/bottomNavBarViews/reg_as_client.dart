import 'package:client_pro/core/reusable.dart';
import 'package:client_pro/features/register_screen/presentation/widgets/addImage/add_Image_as_client.dart';
import 'package:client_pro/features/register_screen/presentation/widgets/custom_text_field.dart';
import 'package:client_pro/features/sign_in_screen/presentation/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterAsClient extends StatefulWidget {
  const RegisterAsClient({super.key,});

  @override
  State<RegisterAsClient> createState() => _RegisterAsClientState();
   
}
bool isSeen=false;
GlobalKey<FormState> globalKey=GlobalKey();
TextEditingController phonenumber = TextEditingController();
TextEditingController password = TextEditingController();
class _RegisterAsClientState extends State<RegisterAsClient> {
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: globalKey,
      child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: FractionalOffset.topLeft,
                  child: Text('Sign Up',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),
              const AddImageViewAsClient(),
              SizedBox(height: 20.sp,),
              CustomTextField(
              validator: (value) {
        if (value == null || value.isEmpty) {
                  return 'Please enter your Name';
                }
                return null;
      },
              valTrue: true,
              obscureText: false,
              hinttext: 'Enter your Full Name',prefixIcon: const Icon(Icons.note_alt_outlined),),
             SizedBox(height: 20.sp,),
              CustomTextField(
              validator: (value) {
        if (value == null || value.isEmpty) {
                  return 'Please enter your Email';
                }
                return null;
      },
              valTrue: true,
              obscureText: false,
              hinttext: 'Enter your Email',prefixIcon: const Icon(Icons.email),keyboardType: TextInputType.emailAddress),
             SizedBox(height: 20.sp,),
             CustomTextField(
              controller: phonenumber,
              validator: (value) {
        if (value == null || value.isEmpty) {
                  return 'Please enter your Phone';
                }
        else if(phonenumber.text.length<11&&phonenumber.text.length<11){
          return "Must be 11 numbers";
        }
        {}
                return null;
      },
              valTrue: true,
              obscureText: false,
              hinttext: 'Enter your Phone Number',prefixIcon: const Icon(Icons.phone_android),keyboardType: TextInputType.phone,),
             SizedBox(height: 20.sp,),

              CustomTextField(
                controller: password,
                validator: (value) {
        if (value == null || value.isEmpty ) {
                  return 'Please enter password';
                }
                return null;
      },
                valTrue: true,
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
              
                    }
                  },
                   child: const Text('Sign Up',style: TextStyle(color: Colors.white),))
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
            ),
    );
  }
}