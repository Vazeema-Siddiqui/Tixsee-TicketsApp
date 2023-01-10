import 'package:flutter/material.dart';

class Constraints {
  var context;
  double width = 0;

  Constraints(this.context) {
    width = MediaQuery.of(context).size.width;
  }

  EdgeInsets largeMargin() {
    return EdgeInsets.fromLTRB(
        width * 0.069, width * 0.04, width * 0.069, width * 0.069);
  }

  EdgeInsets smallMargin() {
    return EdgeInsets.fromLTRB(
        width * 0.041, width * 0.051, width * 0.041, width * 0.051);
  }

  EdgeInsets homeLargeMargin() {
    return EdgeInsets.symmetric(horizontal: width * 0.069);
  }

  EdgeInsets homeSmallMargin() {
    return EdgeInsets.symmetric(horizontal: width * 0.041);
  }

  static EdgeInsets padding18() {
    return const EdgeInsets.only(top: 18);
  }

  static EdgeInsets padding3point6() {
    return const EdgeInsets.only(top: 3.6);
  }

  static EdgeInsets padding36() {
    return const EdgeInsets.only(top: 36);
  }

  static EdgeInsets padding64() {
    return const EdgeInsets.only(top: 64);
  }
}
