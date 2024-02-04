import 'package:cached_network_image/cached_network_image.dart';
import 'package:client_pro/core/reusable.dart';
import 'package:client_pro/features/itemDetailsScreen/presentation/view/item_datails_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCompanyView extends StatelessWidget {
  const CustomCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemDetailsView(),));
      },
      child: Row(
                children: [
                  CachedNetworkImage(
                    height: 100.sp,
                    width: MediaQuery.sizeOf(context).width*0.3,
                    fit: BoxFit.fill,
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    placeholder: (context, url) => CircularProgressIndicator(color: Reusable.reuseColor,),
                    imageUrl: 'https://logosmarcas.net/wp-content/uploads/2020/12/Rexona-Logo-2015-presente.jpg'),
                    Container(
                      constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width*0.7),
                      child:  Column(
                        children: [Text('Rexona Company ',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                        const Text(
                       'Australian deodorant and antiperspirant brand owned by British conglomerate Unilever. ',
                        maxLines: 2,overflow: TextOverflow.ellipsis),
                       
                          ],
                      ),
                    )
                ],
              ),
    );
  }
}