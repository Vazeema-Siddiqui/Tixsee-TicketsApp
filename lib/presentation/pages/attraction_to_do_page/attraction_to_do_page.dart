import 'package:flutter/material.dart';
import 'package:tickets_app/presentation/pages/responsive.dart';
import 'package:tickets_app/presentation/pages/attraction_to_do_page/local_widgets/attraction_to_do_large_page.dart';
import 'package:tickets_app/presentation/pages/attraction_to_do_page/local_widgets/attraction_to_do_small_page.dart';
import 'package:tickets_app/models/models.dart';

class AttractionToDoPage extends StatefulWidget {
  static const String route = 'attraction_to_do';

  AttractionToDoPage(
      {super.key,
      required this.attractionToDoData,});

  // final AttractionToDoModel attractionToDoData = attractionsToDos[0];
  final AttractionToDoModel attractionToDoData;

  @override
  State<AttractionToDoPage> createState() => _AttractionToDoPageState();
}

class _AttractionToDoPageState extends State<AttractionToDoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        smallBody: AttractionToDoSmallPage(
            attractionToDoData: widget.attractionToDoData),
        largeBody: AttractionToDoLargePage(
            attractionToDoData: widget.attractionToDoData),
      ),
    );
  }
}
