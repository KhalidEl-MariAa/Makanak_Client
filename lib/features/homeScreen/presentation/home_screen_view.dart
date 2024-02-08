import 'package:client_pro/features/homeScreen/presentation/widgets/gridview_categories_view.dart';
import 'package:client_pro/features/homeScreen/presentation/widgets/home_screen_appbar.dart';
import 'package:client_pro/features/homeScreen/presentation/widgets/search_and_slider_view.dart';
import 'package:client_pro/features/companiesOf_Category_Screen/presentation/view/services_of_category_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.only(left:10.0.sp,top: 20.sp,right: 10.sp),
        child:   CustomScrollView(
          slivers: [
            const HomeScreenAppBar(),
            const SearchAndSliderView(),
           GridViewCategories(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ServicesOfCategoryView(),));
            },
            containerContent: 'Category'),
           const SliverToBoxAdapter(
            child: SizedBox(height: 20,),
           )
           
          ],
        ),
      ),
    );
  }
}