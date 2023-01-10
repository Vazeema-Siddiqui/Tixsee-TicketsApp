import 'package:flutter/material.dart';
import 'package:tickets_app/models/models.dart';
import 'package:tickets_app/presentation/pages/playground/playground.dart';
import 'package:tickets_app/presentation/pages/home_page/home_page.dart';
import 'package:tickets_app/presentation/pages/event_page/event_page.dart';
import 'package:tickets_app/presentation/pages/city_page/city_page.dart';
import 'package:tickets_app/presentation/pages/attraction_to_do_page/attraction_to_do_page.dart';

class TicketsAppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Playground());
      case HomePage.route:
        return MaterialPageRoute(builder: (_) => HomePage());
      case EventPage.route:
        var eventData = settings.arguments as EventModel;
        return MaterialPageRoute(
            builder: (_) => EventPage(eventData: eventData));
      case AttractionToDoPage.route:
        var attractionToDoData = settings.arguments as AttractionToDoModel;
        return MaterialPageRoute(
            builder: (_) =>
                AttractionToDoPage(attractionToDoData: attractionToDoData,));
      case CityPage.route:
        var cityData = settings.arguments as CityModel;
        return MaterialPageRoute(builder: (_) => CityPage(cityData: cityData));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
