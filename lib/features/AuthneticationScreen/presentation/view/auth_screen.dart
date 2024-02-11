import 'package:client_pro/features/AuthneticationScreen/presentation/view/widgets/auth_bottom_nav_bar.dart';
import 'package:client_pro/features/register_screen/presentation/register.dart';
import 'package:client_pro/features/sign_in_screen/presentation/sign_in.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}
int currentInndex=0;
var pagees = [const RegisterView(),const SignInVieww()];
class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:pagees[currentInndex] ,
        bottomNavigationBar: AuthBottomNavBar(currentindex: currentInndex, onTap: (p0) {
          currentInndex=p0;
          setState(() {
            
          });
        },),
      ),
    );
  }
}