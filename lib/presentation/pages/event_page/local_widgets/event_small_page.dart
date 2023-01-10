import 'package:flutter/material.dart';
import 'package:tickets_app/models/models.dart';
import 'package:tickets_app/presentation/pages/event_page/local_widgets/event_widgets.dart';
import 'package:tickets_app/presentation/pages/common_widgets/common_widgets.dart';
import 'package:tickets_app/presentation/constraints.dart';

class EventSmallPage extends StatefulWidget {
  EventSmallPage({super.key, required this.eventData});
  final EventModel eventData;
  @override
  State<EventSmallPage> createState() => _EventSmallPageState();
}

class _EventSmallPageState extends State<EventSmallPage> {
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
      appBar: CommonAppBar(showAppbar: _showAppbar, context: context),
      body: SingleChildScrollView(
        controller: _scrollViewController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Cover(coverImagePath: widget.eventData.coverImagePath),
            Container(
              margin: Constraints(context).smallMargin(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(titleText: widget.eventData.title),
                  Padding(padding: Constraints.padding3point6()),
                  EventDetails(
                    eventData: widget.eventData,
                  ),
                  Padding(padding: Constraints.padding18()),
                  AdBanner(
                    x: 360,
                    y: 100,
                    bannerPath: 'images/360x100.png',
                  ),
                  Padding(padding: Constraints.padding18()),
                  Includes(includes: widget.eventData.includes),
                  About(
                    about: widget.eventData.about,
                  ),
                  Comments(comments: widget.eventData.comments),
                  Padding(padding: Constraints.padding18()),
                  AdBanner(x: 360, y: 280, bannerPath: 'images/360x280.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
