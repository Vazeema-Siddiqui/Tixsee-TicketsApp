import 'package:flutter/material.dart';
import 'package:tickets_app/models/models.dart';
import 'package:tickets_app/presentation/constraints.dart';
import 'package:tickets_app/presentation/pages/attraction_to_do_page/local_widgets/attraction_to_do_widgets.dart';
import 'package:tickets_app/presentation/pages/common_widgets/common_widgets.dart';

class AttractionToDoSmallPage extends StatefulWidget {
  const AttractionToDoSmallPage({super.key, required this.attractionToDoData});

  final AttractionToDoModel attractionToDoData;

  @override
  State<AttractionToDoSmallPage> createState() =>
      _AttractionToDoSmallPageState();
}

class _AttractionToDoSmallPageState extends State<AttractionToDoSmallPage> {
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
            Cover(coverImagePath: widget.attractionToDoData.coverImagePath),
            Container(
              margin: Constraints(context).smallMargin(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(titleText: widget.attractionToDoData.title),
                  Padding(padding: EdgeInsets.only(bottom: 3.6)),
                  AttractionToDoDetails(attractionToDoData: widget.attractionToDoData,),
                  Padding(padding: EdgeInsets.only(bottom: 18)),
                  AdBanner(x: 360, y: 100, bannerPath: 'images/360x100.png'),
                  Padding(padding: EdgeInsets.only(bottom: 18)),
                  Includes(includes: widget.attractionToDoData.includes),
                  About(
                    about: widget.attractionToDoData.about,
                  ),
                  ImageGallery(
                    imagePaths: widget.attractionToDoData.gallery,
                    maxImages: 4,
                  ),
                  Comments(comments: widget.attractionToDoData.comments),
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
