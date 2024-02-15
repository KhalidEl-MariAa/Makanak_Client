import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:client_pro/core/reusable.dart';
import 'package:client_pro/features/saleDetailsScreen/presentation/view/sale_details_screen.dart';
import 'package:flutter/material.dart';

class CompanyImagesSliderView extends StatelessWidget {
  const CompanyImagesSliderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        CarouselSlider(items:[
          CachedNetworkImage(errorWidget: (context, url, error) => const Icon(Icons.error),
                    placeholder: (context, url) => CircularProgressIndicator(color: Reusable.reuseColor,),
                    imageUrl: 'https://logosmarcas.net/wp-content/uploads/2020/12/Rexona-Logo-2015-presente.jpg'),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => const SaleDetailsScreen(), ));           
               },
            child: Image.asset(imglist[0])),
          Image.asset(imglist[1]),
          Image.asset(imglist[2])],
        options: CarouselOptions(autoPlay: true,enlargeCenterPage: true,)
        // CarouselSlider(items: imglist.map((e) =>
        //  SizedBox(
        //   child: Image.asset(e,fit: BoxFit.fill,width:double.infinity,),)).toList(),
        //  options: CarouselOptions(autoPlay: true,enlargeCenterPage: true,)
         ),
         
        
        ],
    );
  }
}
var imglist= ['assets/s1.jpg','assets/s2.jpg','assets/s3.jpg'];