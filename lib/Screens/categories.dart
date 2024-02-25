import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/Home.dart';
import 'package:eunoia/Screens/photographers.dart';
import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:eunoia/Widgets/categoryCard.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List screens = [
    const Home(),
    const Categories(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Categories',
        backButton: false,
      ),
      backgroundColor: KprimaryBeige,
      body: ListView.builder(
        itemCount: categoryCards.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Photographers();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: categoryCards[index],
            ),
          );
        },
      ),
    );
  }
}

List<CategoryCard> categoryCards = [
  CategoryCard(
    categoryImage: 'assets/venues.png',
    categoryName: 'VENUES',
  ),
  CategoryCard(
    categoryImage: 'assets/photographers.png',
    categoryName: 'PHOTOGRAPHERS',
  ),
  CategoryCard(
    categoryImage: 'assets/eventplanners.png',
    categoryName: 'EVENT PLANNERS',
  ),
  CategoryCard(
    categoryImage: 'assets/djs.png',
    categoryName: 'DJs',
  ),
  CategoryCard(
    categoryImage: 'assets/makeupartists.png',
    categoryName: 'MAKEUP ARTISTS',
  ),
  CategoryCard(
    categoryImage: 'assets/food.png',
    categoryName: 'FOOD',
  ),
  CategoryCard(
    categoryImage: 'assets/hairstylists.png',
    categoryName: 'HAIR STYLISTS',
  ),
  CategoryCard(
    categoryImage: 'assets/otherdetails.png',
    categoryName: 'OTHER DETAILS',
  ),
];
