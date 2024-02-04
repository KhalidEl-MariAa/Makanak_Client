import 'package:flutter/material.dart';

class CompanyAppBar extends StatelessWidget {
  const CompanyAppBar({super.key, required this.appBarTitle});
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
              centerTitle: true,
              title: Text(appBarTitle,style: const TextStyle(fontWeight: FontWeight.bold),),);
  }
}