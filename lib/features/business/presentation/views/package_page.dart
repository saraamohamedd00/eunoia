import 'package:eunoia/core/constants/constants.dart';
import 'package:eunoia/features/business/presentation/widgets/business_page_app_bar.dart';
import 'package:eunoia/features/business/presentation/widgets/cover_with_title.dart';
import 'package:eunoia/features/business/presentation/widgets/request_sheet.dart';
import 'package:eunoia/features/business/presentation/widgets/review_card.dart';
import 'package:eunoia/features/business/presentation/widgets/toggle_button.dart';
import 'package:eunoia/features/business/presentation/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackagePage extends StatefulWidget {
  const PackagePage({Key? key}) : super(key: key);

  @override
  _PackagePageState createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
  int lowerPrice = 15000;

  void handlePriceSelection(int selectedPrice) {
    setState(() {
      lowerPrice += selectedPrice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BusinessPageAppBar(title: 'Mercure Al-Forsan'),
      bottomNavigationBar: Container(
        height: 60.h,
        decoration: const BoxDecoration(
          color: KprimaryBeige,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                showRequestSheet(context);
              },
              child: Container(
                height: 40.h,
                width: 275.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: KprimaryGreen,
                ),
                child: Center(
                  child: Text(
                    '$lowerPrice EGP | Request reservation',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Literata'),
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: KprimaryGreen.withOpacity(.5),
                ),
                child: const Icon(
                  Icons.phone,
                  size: 30,
                  color: KprimaryGreen,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: KprimaryBeige,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CoverWithTitle(
                image: 'assets/images/package2.png',
                title: 'Outdoor Venue',
                location: 'Mercure Al-Forsan',
                rate: '4',
                pin: false,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Divider(
                  endIndent: 60,
                  indent: 60,
                ),
              ),
              const SectionTitle(title: 'Description'),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 3),
                child: Text(
                  'Perfect for hosting events, provides an idyllic backdrop for intimate gatherings, and special occasions.',
                  style: TextStyle(
                    fontFamily: 'Literata',
                    fontSize: 16,
                    color: Color.fromRGBO(0, 0, 0, .7),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  endIndent: 60,
                  indent: 60,
                ),
              ),
              const SectionTitle(title: 'Customize Package'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 3),
                child: Text(
                  'This venue is only for $lowerPrice EGP',
                  style: const TextStyle(
                    fontFamily: 'Literata',
                    fontSize: 16,
                    color: Color.fromRGBO(0, 0, 0, .7),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  endIndent: 100,
                  indent: 100,
                ),
              ),
              const SectionTitle(title: 'Capacity'),
              ToggleButton(
                text: '150',
                initialValue: true,
                price: 0,
                onSelect: handlePriceSelection,
              ),
              ToggleButton(
                text: '200',
                initialValue: false,
                price: 2500,
                onSelect: handlePriceSelection,
              ),
              ToggleButton(
                text: '250',
                initialValue: false,
                price: 2000,
                onSelect: handlePriceSelection,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  endIndent: 100,
                  indent: 100,
                ),
              ),
              const SectionTitle(title: 'Details'),
              ToggleButton(
                text: 'Decorations',
                initialValue: false,
                price: 2500,
                onSelect: handlePriceSelection,
              ),
              ToggleButton(
                text: 'DJ',
                initialValue: false,
                price: 1500,
                onSelect: handlePriceSelection,
              ),
              ToggleButton(
                text: 'All day video',
                initialValue: false,
                price: 3000,
                onSelect: handlePriceSelection,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  endIndent: 100,
                  indent: 100,
                ),
              ),
              const SectionTitle(title: 'Meals'),
              ToggleButton(
                text: '1/4 chicken, 2pcs kofta, rice',
                initialValue: false,
                price: 5000,
                onSelect: handlePriceSelection,
              ),
              ToggleButton(
                text: 'Steak, 2pcs shish tawook, rice',
                initialValue: false,
                price: 7500,
                onSelect: handlePriceSelection,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  endIndent: 100,
                  indent: 100,
                ),
              ),
              const SectionTitle(title: 'Desserts plate'),
              ToggleButton(
                text: 'Gateau',
                initialValue: false,
                price: 3000,
                onSelect: handlePriceSelection,
              ),
              ToggleButton(
                text: '3pcs gateau soiree',
                initialValue: false,
                price: 3200,
                onSelect: handlePriceSelection,
              ),
              ToggleButton(
                text: '2 mini pizza',
                initialValue: false,
                price: 2000,
                onSelect: handlePriceSelection,
              ),
              ToggleButton(
                text: '2 sticks baton sale',
                initialValue: false,
                price: 1500,
                onSelect: handlePriceSelection,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  endIndent: 100,
                  indent: 100,
                ),
              ),
              const SectionTitle(title: 'Drinks'),
              ToggleButton(
                text: 'Soft drinks',
                initialValue: false,
                price: 3000,
                onSelect: handlePriceSelection,
              ),
              ToggleButton(
                text: 'Small water bottle per person',
                initialValue: false,
                price: 3200,
                onSelect: handlePriceSelection,
              ),
              ToggleButton(
                text: '2 big water bottles per table',
                initialValue: false,
                price: 2000,
                onSelect: handlePriceSelection,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  endIndent: 60,
                  indent: 60,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SectionTitle(title: 'Reviews'),
                  Padding(
                    padding: EdgeInsets.only(right: 17),
                    child: Icon(
                      Icons.edit,
                      color: Color.fromRGBO(0, 0, 0, .6),
                    ),
                  ),
                ],
              ),
              const ReviewCard()
            ],
          ),
        ],
      ),
    );
  }
}
