import 'package:client_pro/features/companyScreen/presentation/view/widgets/companies_search_and_slider.dart';
import 'package:client_pro/features/companyScreen/presentation/view/widgets/custom_company_item.dart';
import 'package:client_pro/features/companyScreen/presentation/view/widgets/company_appbar.dart';
import 'package:flutter/material.dart';

class CompaniesMainScreen extends StatelessWidget {
  const CompaniesMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const CompanyAppBar(appBarTitle: 'Companies'),
            const CompaniesSearchAndSliderView(),
            SliverList.separated(
            separatorBuilder: (context, index) => const Column(
              children: [
                Divider(thickness: 1.5),
                SizedBox(height: 5,),
              ],
            ),
            itemBuilder: (context, index) => const CustomCompanyView()
            )


          ],
        ),
       
      ),
    );
  }
}
