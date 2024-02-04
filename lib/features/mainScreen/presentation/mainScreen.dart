import 'package:client_pro/features/emailContactScreen/presentation/view/email_contact_view.dart';
import 'package:client_pro/features/homeScreen/presentation/home_screen_view.dart';
import 'package:client_pro/features/mainScreen/presentation/widgets/main_bottom_nav_bar.dart';
import 'package:client_pro/features/notificationsScreen/presentation/view/notifications_view.dart';
import 'package:client_pro/features/profileScreen/presentation/view/profile_screen_view.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
int currentIndex=0;
var pages = [const HomeScreenView(),const NotifactionsView(),const EmailContactView(),const ProfileScreenView(),];

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  pages[currentIndex],
      bottomNavigationBar: MainBottomNavBar(
        onTap: (p0) {
          currentIndex=p0;
          setState(() {
            
          });
        },
        currentIndex: currentIndex,)
    );
  }
}