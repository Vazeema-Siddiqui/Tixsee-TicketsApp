import 'package:flutter/material.dart';
import 'package:tickets_app/models/models.dart';
import 'package:tickets_app/presentation/pages/attraction_to_do_page/local_widgets/attraction_to_do_widgets.dart';
import 'package:tickets_app/presentation/pages/home_page/local_widgets/home_widgets.dart';
import 'package:tickets_app/presentation/pages/common_widgets/common_widgets.dart';
import 'package:tickets_app/presentation/constraints.dart';
import 'package:tickets_app/presentation/pages/responsive.dart';

class HomeSmallPage extends StatefulWidget {
  HomeSmallPage(
      {super.key,
      required this.categories,
      required this.attractionToDosList,
      required this.eventsList
      // required this.homeData
      });

  final List<CategoryModel> categories;
  final List<AttractionToDoModel> attractionToDosList;
  final List<EventModel> eventsList;

  final offerPaths = [
    'images/offer.png',
    'images/offer.png',
    'images/offer.png',
    'images/offer.png',
  ];

  final List<CategoryModel> whyChooseUs = [
    CategoryModel(iconPath: '/images/mall.png', label: 'Best Prices'),
    CategoryModel(iconPath: '/images/attractions.png', label: 'Discounts'),
    CategoryModel(iconPath: '/images/attractions.png', label: 'Discounts'),
    CategoryModel(iconPath: '/images/events.png', label: 'All Inclusive'),
  ];

  @override
  State<HomeSmallPage> createState() => _HomeSmallPageState();
}

class _HomeSmallPageState extends State<HomeSmallPage> {
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
                  margin: Constraints(context).homeSmallMargin(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 21.6,
                        ),
                      ),
                      HomeSmallCategories(categories: widget.categories),
                      Padding(
                        padding: EdgeInsets.only(bottom: 14.4),
                      ),
                      OffersSmall(offerPaths: widget.offerPaths),
                      WhyChooseUs(whyChooseUs: widget.whyChooseUs),
                      // Padding(padding: EdgeInsets.only(bottom: 21.6),),
                      AdBanner(
                          x: 360, y: 280, bannerPath: 'images/360x280.png'),
                      Padding(
                        padding: EdgeInsets.only(bottom: 14.4),
                      ),
                      Cards(
                      dataList: widget.attractionToDosList as List<AttractionToDoModel>,
                      cardListHeading: 'All City Attractions',
                      cardType: 'attraction',),
                  Cards(
                      dataList: widget.eventsList,
                      cardListHeading: 'All City Events',
                      cardType: 'event',),
                      Padding(
                        padding: EdgeInsets.only(bottom: 21.6),
                      ),
                      AdBanner(
                          x: 360, y: 280, bannerPath: 'images/360x280.png'),
                      Padding(
                        padding: EdgeInsets.only(bottom: 14.4),
                      ),
             
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
