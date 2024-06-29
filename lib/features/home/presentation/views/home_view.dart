import 'package:dalel_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

import 'widgets/home_bottom_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: HomeNavBarWidget(),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
