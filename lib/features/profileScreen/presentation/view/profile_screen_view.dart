import 'package:client_pro/features/profileScreen/presentation/view/widgets/row_of_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreenView extends StatelessWidget {
  const ProfileScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        
        const SliverAppBar(
          title: Text('Profile',style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             CircleAvatar(
                radius: 90.sp,
                foregroundImage: const AssetImage('assets/makanaklogo.png')),
                SizedBox(height: 20.sp,),
                Container(
                  constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width*0.9),
                  child: const Text('khalid El-Maria')),
                Container(
                  constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width*0.9),
                  child: const Text('khalidmaria13@gmail.com')),
                const Text('01061942646'),
                SizedBox(height: 20.sp,),
               const RowOfActionsButtonsView()

            ],
          ),

        )
      ],
    );
  }
}