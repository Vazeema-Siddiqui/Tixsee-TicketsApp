import 'package:flutter/material.dart';
import 'package:tickets_app/models/models.dart';
import 'package:tickets_app/presentation/pages/event_page/local_widgets/event_widgets.dart';
import 'package:tickets_app/presentation/pages/common_widgets/common_widgets.dart';
import 'package:tickets_app/presentation/constraints.dart';

class EventLargePage extends StatefulWidget {
  const EventLargePage({super.key, required this.eventData});

  final EventModel eventData;

  @override
  State<EventLargePage> createState() => _EventLargePageState();
}

class _EventLargePageState extends State<EventLargePage> {
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
    Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CommonAppBar(showAppbar: _showAppbar, context: context,),
      body: SingleChildScrollView(
        controller: _scrollViewController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Cover(coverImagePath: widget.eventData.coverImagePath),
            Container(
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
                              TitleText(titleText: widget.eventData.title),
                              Includes(
                                includes: widget.eventData.includes,
                              ),
                              About(
                                about: widget.eventData.about,
                              ),
                              Comments(comments: widget.eventData.comments),
                            ],
                          ),
                        ),
                      ),
                      Container(width: width * 0.025),
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            EventDetails(eventData: widget.eventData,),
                            Padding(padding: Constraints.padding36()),
                            AdBanner(x:300, y:600, bannerPath: 'images/300x600.png',)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: Constraints.padding64(),
                  ),
                  AdBanner(x:970, y:250, bannerPath: 'images/970x250.png',),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
