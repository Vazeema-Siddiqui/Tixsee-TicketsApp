import 'package:flutter/material.dart';

// class ResponsiveWidget {
// static bool isSmallScreen(BuildContext context) {
//   return MediaQuery.of(context).size.width < 600;
// }

// static bool isLargeScreen(BuildContext context) {
//   return MediaQuery.of(context).size.width >= 600;
// }
// }

class ResponsiveLayout extends StatelessWidget {
  final Widget smallBody;
  final Widget largeBody;

  ResponsiveLayout({
    required this.smallBody,
    required this.largeBody,
  });

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= 700;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < 700;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return smallBody;
        } else {
          return largeBody;
        }
      },
    );
  }
}
