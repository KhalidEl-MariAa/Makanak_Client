import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalesNameAndDescriptionAndPriceDetailsView extends StatelessWidget {
  const SalesNameAndDescriptionAndPriceDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Column(
        children: [
          Text('Aloe Cream ',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                       Align(
                        alignment: Alignment.centerLeft,
                        child:  Text('Description :',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),)
                        ),
                        const SizedBox(height: 8,),
                       Text(
                        'Australian Bodycare Body Cream 100 ml | Intensive Tea Tree Oil moisturiser for face care It is verified by ministry of the health in Egypt',
                        style:TextStyle(fontStyle: FontStyle.italic,fontSize: 15.sp) 
                        ),
                       const SizedBox(height: 20,),
                       Align(
                        alignment: Alignment.centerRight,
                        child: Text('40.00 L.E',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,decoration: TextDecoration.lineThrough))),
                        Align(
                        alignment: Alignment.centerRight,
                        child: Text('30.00 L.E',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700)))
        ],
      ),
    );
  }
}