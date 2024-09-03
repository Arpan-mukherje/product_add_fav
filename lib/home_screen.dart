import 'package:flutter/material.dart';
import 'package:josisoft_technologies_task/bottom_nav_bar.dart';
import 'package:josisoft_technologies_task/category_section.dart';
import 'package:josisoft_technologies_task/fav_items.dart';
import 'package:josisoft_technologies_task/searchbar.dart';
import 'package:josisoft_technologies_task/slider_section.dart';
import 'package:josisoft_technologies_task/user_info_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            UserInfoSection(),
            CustomSearchBar(),
            SliderSection(),
            CategorySection(),
            FavouriteItemsSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
