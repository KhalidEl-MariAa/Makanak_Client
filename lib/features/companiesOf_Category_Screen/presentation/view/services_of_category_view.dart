import 'package:client_pro/features/companyScreen/presentation/view/company_main_screen.dart';
import 'package:client_pro/features/homeScreen/presentation/widgets/gridview_categories_view.dart';
import 'package:client_pro/features/homeScreen/presentation/widgets/search_and_slider_view.dart';
import 'package:client_pro/features/companiesOf_Category_Screen/presentation/view/services_of_categories_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class  ServicesOfCategoryView extends StatelessWidget {
  const  ServicesOfCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(left:10.0.sp,top: 20.sp,right: 10.sp),
          child:   CustomScrollView(
            slivers: [
              const ItemsofCategoryAppBar(),
              const SearchAndSliderView(),
             GridViewCategories(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CompaniesMainScreen(),));
              },
              containerContent: 'Item '),
             const SliverToBoxAdapter(
              child: SizedBox(height: 20,),
             )
             
            ],
          ),
        ),
      ),
    );
  }
}