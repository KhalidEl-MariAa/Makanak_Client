import 'package:client_pro/core/reusable.dart';
import 'package:client_pro/features/editProfileScreen/presentation/view/edit_profile_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowOfActionsButtonsView extends StatelessWidget {
  const RowOfActionsButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Reusable.reuseColor
                      ),
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>const EditProfileScreenView() ,));
                      } ,
                       child: const Text('Edit profile',style: TextStyle(color: Colors.white),),
                       ),
                       SizedBox(width: 10.sp,),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                        backgroundColor: Reusable.reuseColor
                      ),
                      onPressed:(){} ,
                       child: const Text('Sign Out',style: TextStyle(color: Colors.white)),
                       )
                  ],
                );
  }
}