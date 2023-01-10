import 'package:flutter/material.dart';
import 'package:tickets_app/fake_data.dart';
import 'package:tickets_app/presentation/pages/responsive.dart';
import 'package:tickets_app/presentation/pages/event_page/local_widgets/event_large_page.dart';
import 'package:tickets_app/presentation/pages/event_page/local_widgets/event_small_page.dart';
import 'package:tickets_app/models/models.dart';

class EventPage extends StatefulWidget {
  static const String route = 'event';
  EventPage({super.key, required this.eventData});

  // final EventModel eventData = events[0];
    final EventModel eventData;


  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        smallBody: EventSmallPage(eventData: widget.eventData),
        largeBody: EventLargePage(eventData: widget.eventData),
      ),
    );
  }
}
