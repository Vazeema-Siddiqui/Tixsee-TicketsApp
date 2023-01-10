import 'package:flutter/material.dart';
import 'dart:math';
import 'package:tickets_app/models/models.dart';
import 'package:tickets_app/presentation/pages/styles.dart';
import 'package:tickets_app/presentation/pages/responsive.dart';

class AttractionToDoDetails extends StatefulWidget {
  const AttractionToDoDetails({Key? key, required this.attractionToDoData})
      : super(key: key);

  final AttractionToDoModel attractionToDoData;

  @override
  State<AttractionToDoDetails> createState() => _AttractionToDoDetailsState();
}

class _AttractionToDoDetailsState extends State<AttractionToDoDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          const Radius.circular(16.2),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(235, 232, 248, 1),
            offset: Offset(0, 2),
            blurRadius: 18,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(
            ResponsiveLayout.isLargeScreen(context) ? 21.6 : 22.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Starting from'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(149, 145, 169, 1),
                    height: 1.5,
                    letterSpacing: 2,
                  ),
                ),
                Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Text(
                      '\$ ${widget.attractionToDoData.oldPrice.toString()}  ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color.fromRGBO(178, 170, 208, 1),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Text(
                      '\$ ${widget.attractionToDoData.newPrice.toString()}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        height: 1.5,
                        color: Color.fromRGBO(38, 37, 101, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Opened'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(149, 145, 169, 1),
                    height: 1.5,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  '${widget.attractionToDoData.openFromDay} - ${widget.attractionToDoData.openTillDay}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    color: Color.fromRGBO(38, 37, 101, 1),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Time'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(149, 145, 169, 1),
                    height: 1.5,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  '${widget.attractionToDoData.startTime.format(context)}  to  ${widget.attractionToDoData.endTime.format(context)}'
                      .toLowerCase(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    color: Color.fromRGBO(38, 37, 101, 1),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Duration'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(149, 145, 169, 1),
                    height: 1.5,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  widget.attractionToDoData.duration,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    color: Color.fromRGBO(38, 37, 101, 1),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Overall rating'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(149, 145, 169, 1),
                    height: 1.5,
                    letterSpacing: 2,
                  ),
                ),
                Wrap(
                  direction: Axis.horizontal,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      color: Color.fromRGBO(133, 125, 171, 1),
                    ),
                    Text(
                      ' ${widget.attractionToDoData.rating.toString()}  ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                        color: Color.fromRGBO(38, 37, 101, 1),
                      ),
                    ),
                    Text(
                      '(${widget.attractionToDoData.noOfRatings})',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        color: Color.fromRGBO(38, 37, 101, 1),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(149, 145, 169, 1),
                    height: 1.5,
                    letterSpacing: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 3.6),
                ),
                Text(
                  widget.attractionToDoData.location,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Color.fromRGBO(38, 37, 101, 1),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 9),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints.tightFor(
                width: 143,
                height: 46,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Buy Tickets',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27.0),
                  ),
                  backgroundColor: Color.fromRGBO(245, 22, 126, 1),
                  elevation: 45,
                  shadowColor: Color.fromRGBO(61, 55, 241, 0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget
class ImageGallery extends StatefulWidget {
  const ImageGallery(
      {super.key, required this.imagePaths, required this.maxImages});

  final int maxImages;

  final List<String> imagePaths;

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

int selectedImage = 0;

class _ImageGalleryState extends State<ImageGallery> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gallery',
          style: ResponsiveLayout.isLargeScreen(context)
              ? Styles.headingLargeStyle2()
              : Styles.headingSmallStyle2(),
        ),
        Container(
          // color: Colors.purple,
          margin: const EdgeInsets.only(top: 7.2, bottom: 18),
          // height: width * 0.3694,

          child: ResponsiveLayout.isLargeScreen(context)
              ? Row(
                  children: [
                    Flexible(
                      flex: 283,
                      child: getFullImage(width),
                    ),
                    Container(
                      width: 7.2,
                    ),
                    Flexible(
                      flex: 25,
                      child: Container(
                          height: width * 0.3694,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: buildSmallPreview(width),
                          )),
                    ),
                  ],
                )
              : Column(
                  children: [
                    getFullImage(width),
                    Container(
                      height: 7.2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: buildSmallPreview(width),
                    ),
                  ],
                ),
        )
      ],
    );
  }

  Stack getFullImage(double width) {
    return Stack(
      fit: StackFit.loose,
      children: [
        Container(
          height: ResponsiveLayout.isLargeScreen(context)
              ? width * 0.3694
              : width * 0.51,
          width: width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset(
              widget.imagePaths[selectedImage],
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerLeft,
            child: RawMaterialButton(
              onPressed: () {
                setState(() {
                  if (selectedImage <= 0) {
                    selectedImage = widget.imagePaths.length - 1;
                  } else {
                    selectedImage -= 1;
                  }
                });
              },
              fillColor: Color.fromRGBO(29, 30, 52, 0.8),
              child: Icon(
                Icons.chevron_left_rounded,
                size: 20,
                color: Colors.white,
              ),
              // padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,
            child: RawMaterialButton(
              onPressed: () {
                setState(() {
                  if (selectedImage >= widget.imagePaths.length - 1) {
                    selectedImage = 0;
                  } else {
                    selectedImage += 1;
                  }
                });
              },
              fillColor: Color.fromRGBO(29, 30, 52, 0.8),
              child: Icon(
                Icons.chevron_right_rounded,
                size: 20,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> buildSmallPreview(double width) {
    int imageCount = widget.imagePaths.length;
    return List<Widget>.generate(min(imageCount, widget.maxImages), (index) {
      String imagePath = widget.imagePaths[index];
      if (index == widget.maxImages - 1) {
        int remaining = imageCount - widget.maxImages;
        if (remaining == 0) {
          return GestureDetector(
            child: getSmallPreview(imagePath, width),
            onTap: () {
              setState(() {
                selectedImage = index;
              });
            },
          );
        } else {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedImage = index;
              });
            },
            child: Stack(
              fit: StackFit.loose,
              children: [
                getSmallPreview(imagePath, width),
                Positioned.fill(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.black54,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '+' + remaining.toString(),
                    style: TextStyle(fontSize: 21.6, color: Colors.white),
                  ),
                ))
              ],
            ),
          );
        }
      } else {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedImage = index;
            });
          },
          child: getSmallPreview(imagePath, width),
        );
      }
    });
  }

  Container getSmallPreview(String imagePath, double width) {
    return Container(
      height: ResponsiveLayout.isLargeScreen(context)
          ? width * (100 / 1440)
          : width * (84 / 393),
      width: ResponsiveLayout.isLargeScreen(context)
          ? width * (100 / 1440)
          : width * (84 / 393),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class Reviews extends StatefulWidget {
  const Reviews({super.key, required this.reviews});

  final List<ReviewModel> reviews;

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reviews',
            style: ResponsiveLayout.isLargeScreen(context)
                ? Styles.headingLargeStyle2()
                : Styles.headingSmallStyle2(),
          ),
          Container(
            height: 14.4,
          ),
          Container(
            height: 246,
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: widget.reviews.length,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              separatorBuilder: ((context, index) {
                return Container(width: 14.4);
              }),
              itemBuilder: (context, index) {
                return buildReviewCard(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildReviewCard(int index) => Container(
        width: 360,
        // height: 240,
        // height: MediaQuery.of(context).size.width * (265 / 1440),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            const Radius.circular(18),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(36, 37, 101, 0.12),
              offset: Offset(0, 0.8),
              blurRadius: 12,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(21.6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_rate_rounded,
                    color: Color.fromRGBO(255, 208, 44, 1),
                    size: 35,
                  ),
                  Text(
                    widget.reviews[index].rating.toString(),
                    style: TextStyle(
                      fontSize: 21.6,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(38, 37, 101, 1),
                    ),
                  ),
                  Text(
                    '(${widget.reviews[index].noOfRatings.toString()})',
                    style: TextStyle(
                      fontSize: 21.6,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(112, 112, 140, 1),
                    ),
                  )
                ],
              ),
              Container(
                height: 5,
              ),
              Text(
                widget.reviews[index].review,
                maxLines: 6,
                style: TextStyle(
                  fontSize: 14.4,
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                height: 7.2,
              ),
              Text(
                widget.reviews[index].userName,
                style: TextStyle(
                  fontSize: 18,
                  height: 1.3,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      );
}
