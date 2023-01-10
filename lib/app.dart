import 'package:flutter/material.dart';
import 'package:tickets_app/presentation/pages/playground/playground.dart';
import 'package:tickets_app/presentation/pages/home_page/home_page.dart';
import 'package:tickets_app/presentation/pages/event_page/event_page.dart';
import 'package:tickets_app/presentation/pages/attraction_to_do_page/attraction_to_do_page.dart';
import 'package:tickets_app/presentation/pages/city_page/city_page.dart';
import 'package:tickets_app/fake_data.dart';
import 'package:tickets_app/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Inter',
      ),

      onGenerateRoute: TicketsAppRouter.generateRoute,
      initialRoute: Playground.route,
    );
  }
}
