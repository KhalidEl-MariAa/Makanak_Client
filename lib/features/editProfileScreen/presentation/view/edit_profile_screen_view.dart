import 'package:client_pro/features/companyScreen/presentation/view/widgets/company_appbar.dart';
import 'package:client_pro/features/editProfileScreen/presentation/view/widgets/edit_client_data_view.dart';
import 'package:flutter/material.dart';

class EditProfileScreenView extends StatelessWidget {
  const EditProfileScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            CompanyAppBar(appBarTitle: 'Edit Profile'),
            EditClientDataView()
          ],
        ),
      )
      );
  }
}