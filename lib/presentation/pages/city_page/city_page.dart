import 'package:flutter/material.dart';
import 'package:tickets_app/fake_data.dart';
import 'package:tickets_app/presentation/pages/responsive.dart';
import 'package:tickets_app/presentation/pages/city_page/local_widgets/city_large_page.dart';
import 'package:tickets_app/presentation/pages/city_page/local_widgets/city_small_page.dart';
import 'package:tickets_app/models/models.dart';

class CityPage extends StatefulWidget {
  static const String route = 'city';
  const CityPage({super.key, required this.cityData});

  // final CityModel cityData = cities[0];
  final CityModel cityData;

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  @override
  Widget build(BuildContext context) {

    // final List<AttractionToDoModel> attractionToDosList = widget.cityData.attractions;
    // final List<EventModel> eventsList = widget.cityData.events;

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
    // });

    return Scaffold(
      body: ResponsiveLayout(
        smallBody: CitySmallPage(cityData: widget.cityData),
        largeBody: CityLargePage(cityData: widget.cityData),
      ),
    );
  }
}
