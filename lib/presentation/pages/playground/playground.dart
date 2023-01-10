import 'package:flutter/material.dart';

import 'package:tickets_app/presentation/pages/home_page/home_page.dart';
import 'package:tickets_app/presentation/pages/event_page/event_page.dart';
import 'package:tickets_app/presentation/pages/attraction_to_do_page/attraction_to_do_page.dart';
import 'package:tickets_app/presentation/pages/city_page/city_page.dart';
import 'package:tickets_app/fake_data.dart';
import 'package:tickets_app/models/models.dart';

class Playground extends StatelessWidget {
  static const String route = '/';

  const Playground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playground'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 12,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.route,
                      arguments: cities[0]);
                },
                child: const Text(
                  'Go to Home Page',
                  style: TextStyle(
                    letterSpacing: 0.3,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, EventPage.route,
                      arguments: events[0]);
                },
                child: const Text(
                  'Go to Event Page',
                  style: TextStyle(
                    letterSpacing: 0.3,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    AttractionToDoPage.route,
                    arguments: cities[0].attractions[0],
                  );
                },
                child: const Text(
                  'Go to Attraction To Do Page',
                  style: TextStyle(
                    letterSpacing: 0.3,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, CityPage.route,
                      arguments: cities[0]);
                },
                child: const Text(
                  'Go to City Page',
                  style: TextStyle(
                    letterSpacing: 0.3,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ]
            //   TextButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, EditUserProfile.route);
            //     },
            //     child: const Text('Go to edit profile Page'),
            //   ),
            //   TextButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, LoginPage.route);
            //     },
            //     child: const Text('Go to Login Page'),
            //   ),
            //   ElevatedButton(
            //     child: Text("Admin Screen"),
            //     onPressed: () async {
            //       await context.read<AdminProvider>().GetAllUsers();
            //       // ignore: use_build_context_synchronously
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => AdminScreen(),
            //         ),
            //       );
            //       //  tryGettingComp(context);
            //     },
            //   ),
            //   ElevatedButton(
            //     child: Text("goto user profile"),
            //     onPressed: () async {
            //       await context.read<AdminProvider>().GetAllUsers();
            //       // ignore: use_build_context_synchronously
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => ViewProfilePage(
            //                 "5020b68e-d0a2-4062-8713-cf7cea98d387", 1)),
            //       );
            //       //  tryGettingComp(context);
            //     },
            //   ),
            //   TextButton(
            //     onPressed: () {
            //       //Navigate to Register Screen
            //     },
            //     child: const Text('Go to Register Page'),
            //   ),
            //   TextButton(
            //     onPressed: () {
            //       //Navigate to Messages Screen
            //     },
            //     child: const Text('Go to Landing Page'),
            //   ),
            //   TextButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, AcceptReject.route);
            //     },
            //     child: const Text('Go to Accept/Reject Invitations Page'),
            //   ),
            //   TextButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, HomePage.route);
            //     },
            //     child: const Text('Go to Home Page'),
            //   ),
            //   TextButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, SignUpPage.route);
            //       //Navigate to Insert Review Screen
            //     },
            //     child: const Text('Signup page'),
            //   ),
            //   TextButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, InsertReview.route);
            //     },
            //     child: const Text('Go to Insert Review Page'),
            //   ),
            //   TextButton(
            //     onPressed: () async {
            //       EmployeesRepository em = EmployeesRepository();

            //       em.getSearchedEmployees(value: 'taha aslam');
            //     },
            //     child: const Text('Check Api'),
            //   ),
            ,
          ),
        ),
      ),
    ); //Navigate to Insert Review Screen
  }
}
