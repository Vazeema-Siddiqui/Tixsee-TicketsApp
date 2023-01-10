import 'package:flutter/material.dart';
import 'package:tickets_app/models/models.dart';
import 'package:tickets_app/fake_data.dart';
import 'package:tickets_app/presentation/pages/home_page/local_widgets/home_small_page.dart';
import 'package:tickets_app/presentation/pages/home_page/local_widgets/home_large_page.dart';
import 'package:tickets_app/presentation/pages/responsive.dart';

class HomePage extends StatefulWidget {
  static const String route = 'home';
  HomePage({super.key});

  final CityModel cityData = cities[0];

  final List<CategoryModel> categories = [
    CategoryModel(iconPath: '/images/mall.png', label: 'Activities'),
    CategoryModel(iconPath: '/images/attractions.png', label: 'Attractions'),
    CategoryModel(iconPath: '/images/events.png', label: 'Events'),

    // CategoryModel(iconPath: '/images/fastFood.png', label: 'Food'),
    CategoryModel(iconPath: '/images/sports.png', label: 'Sports'),
    CategoryModel(
        iconPath: '/images/wifiAndSimCards.png', label: 'Wifi & Sim Cards'),
    CategoryModel(iconPath: '/images/concerts.png', label: 'Concerts'),
    // CategoryModel(
    // iconPath: '/images/wifiAndSimCards.png', label: 'Water Sports'),
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<AttractionToDoModel> attractionToDosList =
        widget.cityData.attractions;
    final List<EventModel> eventsList = widget.cityData.events;

    // final attractionCardsMap = {};
    // attractions.forEach((attraction) => attractionCardsMap[attraction.id] = {
    //       'title': attraction.title,
    //       'description': attraction.about,
    //       'imagePath': attraction.coverImagePath
    //     });

    // final List<CardModel> attractionCardsList = [];

    // attractionCardsMap.forEach((key, value) {
    //   attractionCardsList.add(
    //     CardModel(
    //       title: value['title'],
    //       description: value['description'],
    //       imagePath: value['imagePath'],
    //     ),
    //   );
    // });

    // final eventCardsMap = {};
    // events.forEach((event) => eventCardsMap[event.id] = {
    //       'title': event.title,
    //       'description': event.about,
    //       'imagePath': event.coverImagePath
    //     });

    // final List<CardModel> eventCardsList = [];

    // eventCardsMap.forEach((key, value) {
    //   eventCardsList.add(
    //     CardModel(
    //       title: value['title'],
    //       description: value['description'],
    //       imagePath: value['imagePath'],
    //     ),
    //   );
    // }
    // );

    return Scaffold(
      body: ResponsiveLayout(
        smallBody: HomeSmallPage(
          categories: widget.categories,
          attractionToDosList: attractionToDosList,
          eventsList: eventsList,
        ),
        largeBody: HomeLargePage(
          categories: widget.categories,
          // attractionToDosList: attractionToDosList,
          // eventsList: eventsList,
        ),
      ),
    );
  }
}
