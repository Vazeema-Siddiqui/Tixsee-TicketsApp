import 'package:flutter/material.dart';
import 'package:tickets_app/models/models.dart';
import 'package:tickets_app/presentation/pages/responsive.dart';

class EventDetails extends StatefulWidget {
  EventDetails({Key? key, required this.eventData}) : super(key: key);

  final EventModel eventData;

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                Row(
                  children: [
                    Text(
                      '\$ ${widget.eventData.oldPrice.toString()}  ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color.fromRGBO(178, 170, 208, 1),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Text(
                      '\$ ${widget.eventData.newPrice.toString()}',
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
                  'Date'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(149, 145, 169, 1),
                    height: 1.5,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  widget.eventData.date,
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
                  '${widget.eventData.time.format(context)}'.toLowerCase(),
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
                  widget.eventData.duration,
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
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      color: Color.fromRGBO(133, 125, 171, 1),
                    ),
                    Text(
                      ' ${widget.eventData.rating.toString()}  ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                        color: Color.fromRGBO(38, 37, 101, 1),
                      ),
                    ),
                    Text(
                      '(${widget.eventData.noOfRatings})',
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
                Text(
                  widget.eventData.location,
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
