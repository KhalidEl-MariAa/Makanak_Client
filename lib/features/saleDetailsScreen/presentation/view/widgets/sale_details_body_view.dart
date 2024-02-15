import 'package:client_pro/features/saleDetailsScreen/presentation/view/widgets/sale_details_appbar.dart';
import 'package:client_pro/features/saleDetailsScreen/presentation/view/widgets/sale_image_name_and_ddescription.dart';
import 'package:flutter/material.dart';

class SaleDetailsBodyView extends StatelessWidget {
  const SaleDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SalesDetailsScreenAppBar(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: SaleImageAndNameAndDescriptionAndPriceDetailsView(),
        )
      ],
    );
  }
}