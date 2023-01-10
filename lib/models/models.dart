// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:html';

import 'package:flutter/material.dart';

class CardModel {
  String title;
  String description;
  String imagePath;
  CardModel(
      {required this.title,
      required this.description,
      required this.imagePath});
}

class EventModel {
  String id;
  String title;
  String coverImagePath;
  String includes;
  String about;
  double oldPrice;
  double newPrice;
  String date;
  TimeOfDay time;
  String duration;
  double rating;
  int noOfRatings;
  String location;
  List<CommentModel> comments;

  EventModel({
    required this.id,
    required this.title,
    required this.coverImagePath,
    required this.includes,
    required this.about,
    required this.oldPrice,
    required this.newPrice,
    required this.date,
    required this.time,
    required this.duration,
    required this.rating,
    required this.noOfRatings,
    required this.location,
    required this.comments,
  });
}

class CommentModel {
  String id;
  String username;
  AssetImage avatar;
  String comment;
  String whenPosted;

  CommentModel({
    required this.id,
    required this.username,
    required this.avatar,
    required this.comment,
    required this.whenPosted,
  });
}

class AttractionToDoModel {
  String id;
  String title;
  String coverImagePath;
  String includes;
  String about;
  double oldPrice;
  double newPrice;
  String openFromDay;
  String openTillDay;
  TimeOfDay startTime;
  TimeOfDay endTime;
  String duration;
  double rating;
  int noOfRatings;
  String location;
  List<CommentModel> comments;
  List<String> gallery;
  List<ReviewModel> reviews;

  AttractionToDoModel({
    required this.id,
    required this.title,
    required this.coverImagePath,
    required this.includes,
    required this.about,
    required this.oldPrice,
    required this.newPrice,
    required this.openFromDay,
    required this.openTillDay,
    required this.startTime,
    required this.endTime,
    required this.duration,
    required this.rating,
    required this.noOfRatings,
    required this.location,
    required this.comments,
    required this.gallery,
    required this.reviews,
  });
}

class ReviewModel {
  String id;
  double rating;
  int noOfRatings;
  String review;
  String userName;

  ReviewModel({
    required this.id,
    required this.rating,
    required this.noOfRatings,
    required this.review,
    required this.userName,
  });
}

class CityModel {
  String id;
  String cityName;
  String coverImagePath;
  String cityDescription;
  List<AttractionToDoModel> attractions;
  List<EventModel> events;

  CityModel({
    required this.id,
    required this.cityName,
    required this.coverImagePath,
    required this.cityDescription,
    required this.attractions,
    required this.events,
  });
}

class CategoryModel {
  String iconPath;
  String label;

  CategoryModel({
    required this.iconPath,
    required this.label,
  });
}
