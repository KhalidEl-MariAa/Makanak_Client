import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemNameAndDescriptionAndPriceDetailsView extends StatelessWidget {
  const ItemNameAndDescriptionAndPriceDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Column(
        children: [
          Text('About Us ',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
          const SizedBox(height: 20,),
                       Align(
                        alignment: Alignment.centerLeft,
                        child:  Text('Description :',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),)
                        ),
                        const SizedBox(height: 8,),
                       Text(
                        'Australian deodorant and antiperspirant brand owned by British conglomerate Unilever, we have our branch in Egypt since 1985',
                        style:TextStyle(fontStyle: FontStyle.italic,fontSize: 15.sp) 
                        ),
                       const SizedBox(height: 20,),
                       Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Address :',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700))),
                        const SizedBox(height: 8,),
                        Text(
                        'القاهره - المعادي - شارع 9 - امام محطة المترو',
                        style:TextStyle(fontStyle: FontStyle.italic,fontSize: 15.sp) 
                        ),
                        
                        
        ],
      ),
    );
  }
}