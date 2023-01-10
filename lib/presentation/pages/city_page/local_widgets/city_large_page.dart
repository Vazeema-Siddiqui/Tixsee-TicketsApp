import 'package:flutter/material.dart';
import 'package:tickets_app/models/models.dart';
import 'package:tickets_app/presentation/pages/common_widgets/common_widgets.dart';
import 'package:tickets_app/presentation/constraints.dart';
import 'package:tickets_app/presentation/pages/styles.dart';

class CityLargePage extends StatefulWidget {
  CityLargePage({
    super.key,
    required this.cityData,
  });

  final CityModel cityData;

  final List<CategoryModel> categories = [
    CategoryModel(iconPath: '/images/mall.png', label: 'Shopping'),
    CategoryModel(iconPath: '/images/attractions.png', label: 'Attractions'),
    CategoryModel(iconPath: '/images/fastFood.png', label: 'Food'),
    CategoryModel(iconPath: '/images/sports.png', label: 'Skydiving'),
    CategoryModel(
        iconPath: '/images/wifiAndSimCards.png', label: 'Water Sports'),
    CategoryModel(iconPath: '/images/events.png', label: 'City Tours'),
    CategoryModel(iconPath: '/images/concerts.png', label: 'Concerts'),
    CategoryModel(
        iconPath: '/images/wifiAndSimCards.png', label: 'Water Sports'),
  ];

  @override
  State<CityLargePage> createState() => _CityLargePageState();
}

class _CityLargePageState extends State<CityLargePage> {
  late ScrollController _scrollViewController;
  bool _showAppbar = true;

  @override
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    _scrollViewController.addListener(() {
      if (_scrollViewController.offset <= 0) {
        _showAppbar = true;
        setState(() {});
      } else {
        _showAppbar = false;
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _scrollViewController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<AttractionToDoModel> attractionToDosList =
        widget.cityData.attractions;
    final List<EventModel> eventsList = widget.cityData.events;

    Size size = MediaQuery.of(context).size;
    double width = size.width;

    // print('list ' + eventCardsList.length.toString());

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CommonAppBar(
        showAppbar: _showAppbar,
        context: context,
      ),
      body: SingleChildScrollView(
        controller: _scrollViewController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Cover(coverImagePath: widget.cityData.coverImagePath),
            Container(
              // margin: EdgeInsets.fromLTRB(90, 57.6, 90, 90),
              margin: Constraints(context).largeMargin(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 3,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LargeTitleText(
                                  titleText: widget.cityData.cityName),
                              MarkdownText(
                                  text: widget.cityData.cityDescription),
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: 33,
                                ),
                              ),
                              TitleText(
                                  titleText:
                                      widget.cityData.attractions[0].title),
                              Includes(
                                includes:
                                    widget.cityData.attractions[0].includes,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(width: width * 0.025),
                      Flexible(
                        flex: 1,
                        child: AdBanner(
                            x: 300, y: 600, bannerPath: 'images/300x600.png'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 57.6),
                  ),
                  Text(
                    'Categories',
                    style: Styles.headingLargeStyle2(),
                  ),
                  Categories(categories: widget.categories),
                  Cards(
                    dataList: attractionToDosList as List<AttractionToDoModel>,
                    cardListHeading: 'All City Attractions',
                    cardType: 'attraction',
                  ),
                  Cards(
                    dataList: eventsList,
                    cardListHeading: 'All City Events',
                    cardType: 'event',
                  ),
                  Padding(
                    padding: Constraints.padding64(),
                  ),
                  AdBanner(
                    x: 970,
                    y: 250,
                    bannerPath: 'images/970x250.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
