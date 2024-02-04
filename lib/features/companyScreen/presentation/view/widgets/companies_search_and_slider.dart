import 'package:carousel_slider/carousel_slider.dart';
import 'package:client_pro/features/register_screen/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompaniesSearchAndSliderView extends StatelessWidget {
  const CompaniesSearchAndSliderView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 20.sp,),
                const CustomTextField(
                  valTrue: false,
                prefixIcon: Icon(Icons.search),
                hinttext: 'Search', obscureText: false),
                SizedBox(height: 20.sp,),
                CarouselSlider(items: imglist.map((e) =>
                 SizedBox(
                  child: Image.asset(e,fit: BoxFit.fill,width:double.infinity,),)).toList(),
                 options: CarouselOptions(autoPlay: true,enlargeCenterPage: true,)),
                 SizedBox(height: 20.sp,),
                 
                ],
            ),
          );
  }
}
var imglist= ['assets/s1.jpg','assets/s2.jpg','assets/s3.jpg'];