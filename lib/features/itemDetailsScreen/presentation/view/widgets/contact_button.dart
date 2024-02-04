import 'package:client_pro/core/reusable.dart';
import 'package:flutter/material.dart';

class ContactButtonAction extends StatelessWidget {
  const ContactButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Reusable.reuseColor
      ),
      onPressed: (){},
       child: const Text('Contact Us now !',style: TextStyle(color: Colors.white),));
  }
}