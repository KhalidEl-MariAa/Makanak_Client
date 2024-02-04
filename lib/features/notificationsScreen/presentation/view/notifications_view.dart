import 'package:flutter/material.dart';

class NotifactionsView extends StatelessWidget {
  const NotifactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    List values =[];
    return  CustomScrollView(
      slivers: [
       const SliverAppBar(
          title: Text('Notifications',style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
      values.isEmpty? const SliverToBoxAdapter(child: Center(child: Text('Empty..There is no notifications')),): SliverList.builder(itemBuilder: (context, index) => const SizedBox(),)
      ],
    );
  }
}