import 'package:flutter/material.dart';
import 'package:tickets_app/models/models.dart';
import 'package:tickets_app/presentation/pages/home_page/local_widgets/home_widgets.dart';
import 'package:tickets_app/presentation/pages/common_widgets/common_widgets.dart';
import 'package:tickets_app/presentation/constraints.dart';

class HomeLargePage extends StatefulWidget {
  HomeLargePage(
      {super.key,
      required this.categories,
      // required this.attractionToDosList,
      // required this.eventsList
      });

  final List<CategoryModel> categories;
  // final List<AttractionToDoModel> attractionToDosList;
  // final List<CardModel> eventsList;

  final List<CategoryModel> whyChooseUs = [
    CategoryModel(iconPath: '/images/mall.png', label: 'Best Prices'),
    CategoryModel(iconPath: '/images/attractions.png', label: 'Discounts'),
    CategoryModel(iconPath: '/images/attractions.png', label: 'Discounts'),
    CategoryModel(iconPath: '/images/events.png', label: 'All Inclusive'),
  ];

  @override
  State<HomeLargePage> createState() => _HomeLargePageState();
}

class _HomeLargePageState extends State<HomeLargePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeSliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Container(
                  margin: Constraints(context).homeLargeMargin(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Search(),
                      HomeLargeCategories(categories: widget.categories),
                      AdBanner(
                          x: 970, y: 250, bannerPath: 'images/970x250.png'),
                      Padding(
                        padding: EdgeInsets.only(bottom: 36),
                      ),
                      AdBanner(
                          x: 970, y: 250, bannerPath: 'images/970x250.png'),
                      Padding(
                        padding: EdgeInsets.only(bottom: 21.6),
                      ),
                      OffersLarge(imagePath: 'images/offer.png'),
                      Padding(
                        padding: EdgeInsets.only(bottom: 36),
                      ),
                      WhyChooseUs(whyChooseUs: widget.whyChooseUs),
                      Padding(
                        padding: EdgeInsets.only(bottom: 57.6),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 90),
                      ),
                    ],
                  ),
                ),
                // ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
