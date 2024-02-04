import 'package:client_pro/features/companyScreen/presentation/view/widgets/company_appbar.dart';
import 'package:client_pro/features/itemDetailsScreen/presentation/view/widgets/company_images_slider.dart';
import 'package:client_pro/features/itemDetailsScreen/presentation/view/widgets/contact_button.dart';
import 'package:client_pro/features/itemDetailsScreen/presentation/view/widgets/item_name_and_description_pirce_details.dart';
import 'package:flutter/material.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return   const SafeArea(child: Scaffold(
      body: CustomScrollView(
        slivers: [
          CompanyAppBar(appBarTitle: 'Rexona Company'),
          SliverFillRemaining(
            hasScrollBody: false,
            child:Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CompanyImagesSliderView(),
                
                  ItemNameAndDescriptionAndPriceDetailsView(),
                  
                  ContactButtonAction()
                       
              ],) ,
          ),
          // CompanyImagesSliderView(),
          // SliverToBoxAdapter(
          //   child: Column(
              
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       SizedBox(height: 60,),
          //         ItemNameAndDescriptionAndPriceDetailsView(),
          //         SizedBox(height: 15,),
          //         ContactButtonAction()
                       
          //     ],)
          // )


          // SliverFillRemaining(
            
          //   hasScrollBody: false,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //         ItemNameAndDescriptionAndPriceDetailsView(),
          //         SizedBox(height: 10,),
          //         ContactButtonAction()
                       
          //     ],
          //   ),
          // )
        ],
      ),
    ));
  }
}