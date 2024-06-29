import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/features/cart/presentation/views/cart_view.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:dalel_app/features/profile/presentation/views/profile_view.dart';
import 'package:dalel_app/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

final PersistentTabController _controller = PersistentTabController();

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.kPrimaryColor,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeViewBody(),
    const CartView(),
    const SearchView(),
    const ProfileView(),
  ];
}

List<Widget?> _inActiveIcon = const [
  Icon(Icons.home_outlined),
  Icon(Icons.shopping_cart_outlined),
  Icon(Icons.search),
  Icon(Icons.person_outline),
];
List<Widget> _activeIcon = const [
  Icon(Icons.home),
  Icon(Icons.shopping_cart),
  Icon(Icons.search),
  Icon(Icons.person),
];
List<PersistentBottomNavBarItem> _navBarsItems() {
  return List.generate(
    4,
    (index) => PersistentBottomNavBarItem(
      iconSize: 29,
      inactiveIcon: _inActiveIcon[index],
      icon: _activeIcon[index],
      activeColorPrimary: AppColors.kDeepBrownColor,
      inactiveColorPrimary: AppColors.kInactiveColorPrimary,
    ),
  );
}
