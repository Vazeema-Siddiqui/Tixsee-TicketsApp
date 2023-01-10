import 'package:flutter/material.dart';
import 'package:tickets_app/models/models.dart';
import 'package:tickets_app/presentation/constraints.dart';
import 'package:tickets_app/presentation/pages/attraction_to_do_page/local_widgets/attraction_to_do_widgets.dart';
import 'package:tickets_app/presentation/pages/common_widgets/common_widgets.dart';

class AttractionToDoLargePage extends StatefulWidget {
  const AttractionToDoLargePage({super.key, required this.attractionToDoData});

  final AttractionToDoModel attractionToDoData;

  @override
  State<AttractionToDoLargePage> createState() =>
      _AttractionToDoLargePageState();
}

class _AttractionToDoLargePageState extends State<AttractionToDoLargePage> {
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
        child: 
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Cover(coverImagePath: widget.attractionToDoData.coverImagePath),
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
                                TitleText(
                                    titleText: widget.attractionToDoData.title),
                                Includes(
                                  includes: widget.attractionToDoData.includes,
                                ),
                                About(
                                  about: widget.attractionToDoData.about,
                                ),
                                Comments(
                                    comments: widget.attractionToDoData.comments),
                              ],
                            ),
                          ),
                        ),
                        Container(width: width * 0.025),
                        Flexible(
                          flex: 1,
                          child: Column(
                            children: [
                              AttractionToDoDetails(attractionToDoData: widget.attractionToDoData,),
                              Padding(padding: EdgeInsets.only(bottom: 36)),
                              AdBanner(x: 300, y: 600, bannerPath: 'images/300x600.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 57.6),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18),
                    ),
                    ImageGallery(
                      imagePaths: widget.attractionToDoData.gallery,
                      maxImages: 5,
                    ),
                    Reviews(
                      reviews: widget.attractionToDoData.reviews,
                    ),
                    Comments(comments: widget.attractionToDoData.comments),
                    Padding(
                      padding: EdgeInsets.only(bottom: 57.6),
                    ),
                    AdBanner(x: 970, y: 250, bannerPath: 'images/970x250.png'),
                   
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
