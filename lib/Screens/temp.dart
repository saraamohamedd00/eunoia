import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/Home.dart';
import 'package:eunoia/Screens/categories.dart';
import 'package:eunoia/Screens/chatBot.dart';
import 'package:eunoia/Screens/profile.dart';
import 'package:eunoia/Screens/search.dart';
import 'package:eunoia/Widgets/navBar.dart';
import 'package:flutter/material.dart';

class temp extends StatefulWidget {
  const temp({super.key});

  @override
  State<temp> createState() => _CategoriesState();
}

class _CategoriesState extends State<temp> {
  final List screens = [
    Categories(),
    Search(),
    Home(),
    ChatBot(),
    Profile(),
  ];

  int _currentTab = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomNavBar(
          unSelectedColor: Colors.grey.shade400,
          selectedColor: KprimaryPink,
          selectedTab: _currentTab,
          children: const [
            CustomBottomAppBarItem(
              icon: Icons.category_outlined,
            ),
            CustomBottomAppBarItem(
              icon: Icons.search_outlined,
            ),
            CustomBottomAppBarItem(
              icon: Icons.home_outlined,
            ),
            CustomBottomAppBarItem(
              icon: Icons.chat_outlined,
            ),
            CustomBottomAppBarItem(
              icon: Icons.person_outlined,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentTab = index;
            });
          },
        ),
        backgroundColor: KprimaryBeige,
        body: SafeArea(child: screens[_currentTab]));
  }
}
