import 'package:flutter/material.dart';
import 'package:tickets_app/presentation/pages/responsive.dart';
import 'package:tickets_app/presentation/pages/styles.dart';
import 'package:tickets_app/models/models.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tickets_app/presentation/pages/event_page/event_page.dart';
import 'package:tickets_app/presentation/pages/attraction_to_do_page/attraction_to_do_page.dart';

// Widget
class CommonAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CommonAppBar({
    Key? key,
    required bool showAppbar,
    required BuildContext context,
  })  : _showAppbar = showAppbar,
        context = context,
        super(key: key);

  final bool _showAppbar;
  final BuildContext context;

  @override
  Size get preferredSize =>
      Size.fromHeight(ResponsiveLayout.isLargeScreen(context) ? 81 : 68.193);

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return PreferredSize(
      preferredSize: Size.fromHeight(
          ResponsiveLayout.isLargeScreen(context) ? 81 : 68.193),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: widget._showAppbar ? 1 : 0,
            duration: Duration(milliseconds: 500),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              toolbarHeight:
                  ResponsiveLayout.isLargeScreen(context) ? 81 : 68.193,
              automaticallyImplyLeading: false,
              leading: null,
              titleSpacing: 0,
              title: Container(
                margin: EdgeInsets.only(
                  left: width * 0.0625,
                ),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 20),
                        width: ResponsiveLayout.isLargeScreen(context)
                            ? 41.5
                            : 31.32,
                        height: ResponsiveLayout.isLargeScreen(context)
                            ? 33.8
                            : 25.5,
                        child: Image.asset('images/Vector.png',
                            fit: BoxFit.fitWidth)),
                    Flexible(
                      child: Text(
                        'Tickets App',
                        style: TextStyle(
                          fontSize: ResponsiveLayout.isLargeScreen(context)
                              ? 24.25
                              : 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: ResponsiveLayout.isLargeScreen(context)
                  ? [
                      Container(
                        margin: EdgeInsets.only(right: width * 0.0625),
                        child: Row(
                          children: [
                            Align(
                              child: SizedBox(
                                height: 40,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Schedule',
                                    style: TextStyle(
                                      fontSize: 15.3,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.028,
                            ),
                            Align(
                              child: SizedBox(
                                height: 40,
                                child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Text(
                                    'Event Types',
                                    style: TextStyle(
                                      fontSize: 15.3,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  label: Image.asset('icons/chevron-down.png'),
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.028,
                            ),
                            Align(
                              child: ConstrainedBox(
                                constraints: const BoxConstraints.tightFor(
                                  width: 158,
                                  height: 40,
                                ),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Add My Event',
                                    style: TextStyle(
                                      fontSize: 15.3,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    primary: Colors.white,
                                    backgroundColor: Colors.transparent,
                                    side: BorderSide(
                                        color: Colors.white, width: 2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    textStyle: TextStyle(
                                      color: Color.fromARGB(255, 36, 37, 101),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                  : [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 14.4, 0),
                        child: PopupMenuButton(
                            icon: Image.asset('/icons/menu.png'),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  value: 'Schedule',
                                  child: Text('Schedule'),
                                ),
                                PopupMenuItem(
                                  value: 'Event Types',
                                  child: PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Text('Event Types'),
                                        Icon(Icons.expand_more_rounded,
                                            color: Colors.black),
                                      ],
                                    ),
                                    itemBuilder: (context) {
                                      return [
                                        PopupMenuItem(child: Text("Item 1")),
                                        PopupMenuItem(child: Text("Item 2")),
                                      ];
                                    },
                                  ),
                                ),
                                PopupMenuItem(
                                  value: 'Add My Event',
                                  padding: EdgeInsets.only(left: 10),
                                  child: ConstrainedBox(
                                    constraints: const BoxConstraints.tightFor(
                                      width: 150,
                                      height: 40,
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Add My Event'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        backgroundColor:
                                            Color.fromRGBO(245, 22, 126, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ];
                            }),
                      )
                    ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget
class Cover extends StatefulWidget {
  const Cover({super.key, required this.coverImagePath});

  final String coverImagePath;

  @override
  State<Cover> createState() => _CoverState();
}

class _CoverState extends State<Cover> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromRGBO(10, 10, 30, 1),
          Color.fromRGBO(10, 10, 34, 0),
        ],
        stops: [0.0, 0.5],
      )),
      height: ResponsiveLayout.isLargeScreen(context)
          ? width * 0.347
          : width * 0.636,
      width: double.infinity,
      child: Image.asset(
        widget.coverImagePath,
        fit: BoxFit.fill,
      ),
    );
  }
}

// Widget
class TitleText extends StatefulWidget {
  const TitleText({super.key, required this.titleText});

  final String titleText;
  @override
  State<TitleText> createState() => _TitleTextState();
}

class _TitleTextState extends State<TitleText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.titleText,
      style: TextStyle(
        fontSize: ResponsiveLayout.isLargeScreen(context) ? 28.8 : 21.6,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

// Widget
class LargeTitleText extends StatefulWidget {
  const LargeTitleText({super.key, required this.titleText});

  final String titleText;
  @override
  State<LargeTitleText> createState() => _LargeTitleTextState();
}

class _LargeTitleTextState extends State<LargeTitleText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.titleText,
      style: TextStyle(
        fontSize: ResponsiveLayout.isLargeScreen(context) ? 43.2 : 28.8,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

// Widget
class Includes extends StatefulWidget {
  const Includes({
    Key? key,
    required this.includes,
  }) : super(key: key);

  final String includes;

  @override
  State<Includes> createState() => _IncludesState();
}

class _IncludesState extends State<Includes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveLayout.isLargeScreen(context)
          ? EdgeInsets.only(top: 21.6, bottom: 18)
          : EdgeInsets.symmetric(vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'This event includes',
            style: ResponsiveLayout.isLargeScreen(context)
                ? Styles.headingLargeStyle2()
                : Styles.headingSmallStyle2(),
          ),
          Container(
            height: ResponsiveLayout.isLargeScreen(context) ? 21.6 : 14.4,
          ),
          Text(
            widget.includes,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 14.4,
              fontWeight: FontWeight.w500,
              height: 2.7,
            ),
          ),
        ],
      ),
    );
  }
}

// Widget
class About extends StatefulWidget {
  const About({Key? key, required this.about}) : super(key: key);

  final String about;

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About the Event',
            style: ResponsiveLayout.isLargeScreen(context)
                ? Styles.headingLargeStyle2()
                : Styles.headingSmallStyle2(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7.2),
            child: Markdown(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              data: widget.about,
              styleSheet: MarkdownStyleSheet.fromTheme(
                ThemeData(
                  textTheme: TextTheme(
                    bodyText2: TextStyle(
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.4,
                    ),
                  ),
                ),
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Text(
              'Read More',
              style: TextStyle(
                fontSize: 15.3,
                color: Color.fromRGBO(61, 55, 241, 1),
                fontWeight: FontWeight.w700,
              ),
            ),
            label: Icon(Icons.expand_more_rounded),
          ),
        ],
      ),
    );
  }
}

// Widget
class Comments extends StatefulWidget {
  const Comments({Key? key, required this.comments}) : super(key: key);

  final List<CommentModel> comments;

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14.4, horizontal: 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(14.4),
            ),
            color: Color.fromRGBO(241, 244, 245, 1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Don\'t see the answer you\'re looking for? Post Your Question',
              style: ResponsiveLayout.isLargeScreen(context)
                  ? Styles.headingLargeStyle2()
                  : Styles.headingSmallStyle2(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                'Your question might be answered by the host, speakers or GoSocial team',
                style: TextStyle(
                  fontSize: 14.4,
                  height: 1.5,
                ),
              ),
            ),
            ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 14.4),
              scrollDirection: Axis.vertical,
              itemCount: widget.comments.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: ((context, index) {
                return Container(
                  height: 14.4,
                );
              }),
              itemBuilder: (context, index) {
                return buildComment(context, index);
              },
            ),
            Container(
              padding: EdgeInsets.all(14.4),
              decoration: BoxDecoration(
                color: Color.fromRGBO(250, 250, 250, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(9),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 86.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(7.2),
                      ),
                      color: Colors.white,
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(233, 235, 240, 1)),
                    ),
                    child: TextField(
                      maxLines: null,
                      style: TextStyle(
                        fontSize: 12.6,
                        fontFamily: 'Rubik',
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9),
                        hintText: 'Add a comment. Use ‘@’ to tag people',
                        hintStyle: TextStyle(
                          fontSize: 12.6,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(171, 188, 206, 1),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 9,
                    ),
                  ),
                  OverflowBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    overflowSpacing: 11.7,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('/images/avatar3.png'),
                        backgroundColor: Colors.transparent,
                        radius: 15,
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints.tightFor(
                          width: 129,
                          height: 45,
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Comment',
                            style: TextStyle(fontSize: 15.3),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27.0),
                            ),
                            backgroundColor: Color.fromRGBO(36, 37, 101, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 14.4),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildComment(BuildContext context, int index) => Container(
        padding: EdgeInsets.all(14.4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            const Radius.circular(9),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OverflowBar(
              alignment: MainAxisAlignment.spaceBetween,
              overflowSpacing: 11.7,
              children: [
                OverflowBar(
                  spacing: 11.7,
                  overflowSpacing: 11.7,
                  children: [
                    CircleAvatar(
                      backgroundImage: widget.comments[index].avatar,
                      backgroundColor: Colors.transparent,
                      radius: 15,
                    ),
                    Text(
                      widget.comments[index].username,
                      style: TextStyle(
                        color: Color.fromRGBO(51, 66, 83, 1),
                        fontFamily: 'Poppins',
                        fontSize: 14.4,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.comments[index].whenPosted,
                  style: TextStyle(
                    color: Color.fromRGBO(103, 114, 126, 1),
                    fontFamily: 'Poppins',
                    fontSize: 12.6,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 9.0),
            ),
            Text(
              widget.comments[index].comment,
              style: TextStyle(
                color: Color.fromRGBO(103, 114, 126, 1),
                fontFamily: 'Poppins',
                fontSize: 14.4,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      );
}

// Widget
class AdBanner extends StatefulWidget {
  AdBanner(
      {super.key, required this.x, required this.y, required this.bannerPath});
  final String bannerPath;
  final int x;
  final int y;

  @override
  State<AdBanner> createState() => _AdBannerState();
}

class _AdBannerState extends State<AdBanner> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      height: widget.x == 300 && widget.y == 600
          ? width * 0.42
          : widget.x == 970 && widget.y == 250
              ? width * 0.1736
              : widget.x == 360 && widget.y == 100
                  ? width * 0.25
                  : widget.x == 360 && widget.y == 280
                      ? width * 0.712
                      : 0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.bannerPath),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

// Widget
class Cards extends StatefulWidget {
  const Cards(
      {super.key,
      required this.dataList,
      required this.cardListHeading,
      required this.cardType});

  final dynamic dataList;
  final String cardListHeading;
  final String cardType;

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.cardListHeading, style: Styles.headingLargeStyle2()),
          Container(
            height: 14.4,
          ),
          Container(
            height: ResponsiveLayout.isLargeScreen(context) ? 264.6 : 280.8,
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              // itemCount: widget.cardType == 'attraction'
              //     ? widget.attractionData.length
              //     : widget.eventData.length,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              separatorBuilder: ((context, index) {
                return Container(width: 14.4);
              }),
              itemBuilder: (context, index) {
                return buildCard(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(int index) => Container(
        width: ResponsiveLayout.isLargeScreen(context) ? 362.403 : 270,
        // height: 240,
        // height: MediaQuery.of(context).size.width * (265 / 1440),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            const Radius.circular(18),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(36, 37, 101, 0.1),
              offset: Offset(1.8, 3.6),
              blurRadius: 9,
            ),
          ],
        ),
        child: Column(
          children: [
            Flexible(
              flex: ResponsiveLayout.isLargeScreen(context) ? 100 : 25,
              child: Material(
                child: InkWell(
                  onTap: () {
                    if (widget.cardType == 'event') {
                      Navigator.pushNamed(context, EventPage.route,
                          arguments: widget.dataList[index] as EventModel);
                    } else if (widget.cardType == 'attraction') {
                      Navigator.pushNamed(context, AttractionToDoPage.route,
                          arguments: 
                            widget.dataList[index] as AttractionToDoModel,
                          );
                    }
                  },
                  child: Ink(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage(widget.dataList[index].coverImagePath),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: ResponsiveLayout.isLargeScreen(context) ? 47 : 14,
              child: Container(
                  padding: EdgeInsets.all(14.4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.dataList[index].title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 14.4,
                          fontWeight: FontWeight.w700,
                          height: 1.3,
                        ),
                      ),
                      Text(
                        widget.dataList[index].about,
                        overflow: TextOverflow.ellipsis,
                        maxLines:
                            ResponsiveLayout.isLargeScreen(context) ? 1 : 2,
                        style: TextStyle(
                          fontSize: 12.6,
                          color: Color.fromRGBO(106, 106, 106, 1),
                          height: 1.3,
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      );
}

// Widget
class MarkdownText extends StatefulWidget {
  const MarkdownText({super.key, required this.text});

  final String text;

  @override
  State<MarkdownText> createState() => _MarkdownTextState();
}

class _MarkdownTextState extends State<MarkdownText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Markdown(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            data: widget.text,
            styleSheet: MarkdownStyleSheet.fromTheme(
              ThemeData(
                textTheme: TextTheme(
                  bodyText2: TextStyle(
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.4,
                  ),
                ),
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Text(
              'Read More',
              style: TextStyle(
                fontSize: 15.3,
                color: Color.fromRGBO(61, 55, 241, 1),
                fontWeight: FontWeight.w700,
              ),
            ),
            label: Icon(Icons.expand_more_rounded),
          ),
        ],
      ),
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({
    super.key,
    required this.categories,
  });

  final List<CategoryModel> categories;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> categoryWidgets = buildCategories();
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: ResponsiveLayout.isLargeScreen(context)
              ? EdgeInsets.only(bottom: 14.4)
              : EdgeInsets.only(bottom: 21.6),
        ),
        ResponsiveLayout.isLargeScreen(context)
            ? LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: constraints.maxWidth,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: categoryWidgets,
                    ),
                  ),
                );
              })
            : Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      categoryWidgets[0],
                      categoryWidgets[1],
                      categoryWidgets[2],
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(height: 21.6),
                    SizedBox(height: 21.6),
                    SizedBox(height: 21.6),
                  ]),
                  TableRow(
                    children: [
                      categoryWidgets[3],
                      categoryWidgets[4],
                      categoryWidgets[5],
                    ],
                  ),
                ],
              ),
        Padding(
            padding: ResponsiveLayout.isLargeScreen(context)
                ? EdgeInsets.only(bottom: 36)
                : EdgeInsets.only(bottom: 29.3))
      ],
    );
  }

  Widget getCategory(int index) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: ResponsiveLayout.isLargeScreen(context)
                ? EdgeInsets.all(16.2)
                : EdgeInsets.all(13.5),
            child: Image.asset(
              widget.categories[index].iconPath,
              fit: BoxFit.fitHeight,
              height: ResponsiveLayout.isLargeScreen(context) ? 75.6 : 63,
              width: ResponsiveLayout.isLargeScreen(context) ? 75.6 : 63,
            ),
          ),
          SizedBox(
            height: ResponsiveLayout.isLargeScreen(context) ? 6.3 : 2.7,
          ),
          Flexible(
            child: Text(
              widget.categories[index].label,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: ResponsiveLayout.isLargeScreen(context) ? 14.4 : 12.6,
                height: 1.3,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildCategories() {
    int categoryCount = widget.categories.length;

    return List<Widget>.generate(categoryCount, (index) {
      return getCategory(index);
    });
  }
}
