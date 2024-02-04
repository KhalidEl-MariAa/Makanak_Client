import 'package:client_pro/features/itemDetailsScreen/presentation/view/widgets/contact_button.dart';
import 'package:client_pro/features/saleDetailsScreen/presentation/view/widgets/sale_details_image.dart';
import 'package:client_pro/features/saleDetailsScreen/presentation/view/widgets/sale_name_and_description_price.dart';
import 'package:flutter/material.dart';

class SalesDetailsView extends StatelessWidget {
  const SalesDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return   const SafeArea(
      child: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  SalesDetailsImageView(),
                  SizedBox(height: 20,),
                  SalesNameAndDescriptionAndPriceDetailsView(),
                  SizedBox(height: 10,),
                  ContactButtonAction()
                       
              ],
            ),
          )
        ],
      ),
    ));
  }
}