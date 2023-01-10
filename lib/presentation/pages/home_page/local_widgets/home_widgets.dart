import 'package:flutter/material.dart';
import 'package:tickets_app/presentation/pages/styles.dart';
import 'package:tickets_app/presentation/pages/responsive.dart';
import 'package:tickets_app/models/models.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({
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
  // Size.fromHeight(ResponsiveLayout.isLargeScreen(context) ? 156 : 140.193);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
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
              backgroundColor: Color.fromRGBO(36, 37, 101, 1),
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
                            ElevatedButton(
                              onPressed: () {},
                              child: Center(
                                child: Text(
                                  'Add My Event',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(158, 45),
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                backgroundColor:
                                    Color.fromRGBO(245, 22, 126, 1),
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

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return PreferredSize(
      preferredSize:
          Size.fromHeight(ResponsiveLayout.isLargeScreen(context) ? 75.06 : 72),
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 14.4, horizontal: width * 0.0625),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Search',
                  prefixIcon: Image.asset('icons/search.png'),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
            Visibility(
              visible: ResponsiveLayout.isLargeScreen(context),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 7.2),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 100,
                    ),
                    width: width * 0.15,
                    height: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Search'),
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(255, 36, 37, 101),
                          side: BorderSide(color: Colors.white, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          textStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomShape extends ContinuousRectangleBorder {
  final double multi;
  const CustomShape({this.multi = 0.1});
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    double height = rect.height;
    double width = rect.width;
    var path = Path();
    path.lineTo(0, height + width * multi);
    path.arcToPoint(
      Offset(width * multi, height),
      radius: Radius.circular(width * multi),
    );
    path.lineTo(width * (1 - multi), height);
    path.arcToPoint(
      Offset(width, height + width * multi),
      radius: Radius.circular(width * multi),
    );
    path.lineTo(width, 0);
    path.close();

    return path;
  }
}

// Widget
class HomeLargeCategories extends StatefulWidget {
  const HomeLargeCategories({
    super.key,
    required this.categories,
  });

  final List<CategoryModel> categories;

  @override
  State<HomeLargeCategories> createState() => _HomeLargeCategoriesState();
}

class _HomeLargeCategoriesState extends State<HomeLargeCategories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.4,
      margin: EdgeInsets.symmetric(vertical: 21.6),
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return getCategory(index);
        },
        separatorBuilder: ((context, index) {
          return Container(width: 7.2);
        }),
        itemCount: widget.categories.length,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
      ),
    );
  }

  Widget getCategory(int index) {
    return InkWell(
        onTap: () {},
        customBorder: CircleBorder(),
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(36, 37, 101, 1),
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              const Radius.circular(72),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 21.6),
          child: Row(
            children: [
              Image.asset(
                widget.categories[index].iconPath,
                fit: BoxFit.fitHeight,
                height: 21.6,
                width: 21.6,
              ),
              Padding(padding: EdgeInsets.only(left: 12.6)),
              Text(
                widget.categories[index].label,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.4,
                  letterSpacing: 0.3,
                  color: Color.fromRGBO(36, 37, 101, 1),
                ),
              ),
            ],
          ),
        ));
  }
}

class OffersLarge extends StatefulWidget {
  OffersLarge({super.key, required this.imagePath});

  final String imagePath;

  @override
  State<OffersLarge> createState() => _OffersLargeState();
}

class _OffersLargeState extends State<OffersLarge> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.4),
        child: Text(
          'Offers for you',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      Container(
        constraints: BoxConstraints(
          maxHeight: 468,
          maxWidth: 1116,
        ),
        child: Image.asset(
          widget.imagePath,
          fit: BoxFit.cover,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromRGBO(0, 0, 0, 0.5),
              Color.fromRGBO(0, 0, 0, 0),
            ],
            stops: [0.0, 0.25],
          ),
        ),
      ),
    ]);
  }
}

class OffersSmall extends StatefulWidget {
  OffersSmall({super.key, required this.offerPaths});

  final List<String> offerPaths;

  @override
  State<OffersSmall> createState() => _OffersSmallState();
}

class _OffersSmallState extends State<OffersSmall> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14.4),
      child: Column(
        children: [
          Container(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Offers for you',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 19.8,
                  color: Color.fromRGBO(80, 64, 181, 1),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7.2),
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              // padding: EdgeInsets.all(_width * 0.04),
              itemCount: widget.offerPaths.length,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              separatorBuilder: ((context, index) {
                return Container(width: 14.4);
              }),
              itemBuilder: (context, index) {
                return buildOffer(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOffer(int index) => Container(
        width: 306,
        // height: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            image: AssetImage(widget.offerPaths[index]),
            fit: BoxFit.fill,
          ),
        ),
      );
}

class HomeSliverAppBar extends StatefulWidget {
  const HomeSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeSliverAppBar> createState() => _HomeSliverAppBarState();
}

class _HomeSliverAppBarState extends State<HomeSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SliverAppBar(
      toolbarHeight: ResponsiveLayout.isLargeScreen(context) ? 81 : 68.193,
      backgroundColor: Color.fromRGBO(36, 37, 101, 1),
      automaticallyImplyLeading: false,
      elevation: 0.0,
      leading: null,
      expandedHeight: ResponsiveLayout.isLargeScreen(context) ? 81 : 68.193,
      collapsedHeight: ResponsiveLayout.isLargeScreen(context) ? 81 : 68.193,
      shape: ResponsiveLayout.isLargeScreen(context)
          ? null
          : CustomShape(multi: 0.05),
      titleSpacing: 0.0,
      title: Container(
        // height: ResponsiveLayout.isLargeScreen(context) ? 51.822 : 39.924,
        padding: ResponsiveLayout.isLargeScreen(context)
            ? EdgeInsets.only(left: width * 0.0625)
            : EdgeInsets.only(left: width * 0.04),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  children: [
                    Padding(
                      padding: ResponsiveLayout.isLargeScreen(context)
                          ? EdgeInsets.all(9.0)
                          : EdgeInsets.all(3.6),
                      child: Image.asset('images/Vector.png'),
                    ),
                    Container(
                      width:
                          ResponsiveLayout.isLargeScreen(context) ? 13.5 : 9.9,
                    ),
                    Container(
                      child: const Text('Tickets App'),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
                        // height: 40,
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
                    ElevatedButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'Add My Event',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(158, 45),
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Color.fromRGBO(245, 22, 126, 1),
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
                                  borderRadius: BorderRadius.circular(30.0),
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
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(
            ResponsiveLayout.isLargeScreen(context) ? 75.06 : 72),
        child: Container(
          color: Color.fromARGB(255, 36, 37, 101),
          child: Padding(
            padding: ResponsiveLayout.isLargeScreen(context)
                ? EdgeInsets.symmetric(
                    vertical: 14.4, horizontal: width * 0.0625)
                : EdgeInsets.symmetric(
                    vertical: 14.4, horizontal: width * 0.04),
            child: Container(
              height: 43,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(30.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Search',
                          prefixIcon: Image.asset('icons/search.png'),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 11.7),
                          isDense: true),
                    ),
                  ),
                  Visibility(
                    visible: ResponsiveLayout.isLargeScreen(context),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 7.2),
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 100,
                            maxHeight: 46.26,
                          ),
                          width: width * 0.15,
                          height: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text('Search'),
                            style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor:
                                    Color.fromARGB(255, 36, 37, 101),
                                side: BorderSide(color: Colors.white, width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                textStyle: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchSliver extends StatefulWidget {
  const SearchSliver({super.key});

  @override
  State<SearchSliver> createState() => _SearchSliverState();
}

class _SearchSliverState extends State<SearchSliver> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SliverAppBar(
      backgroundColor: Color.fromRGBO(36, 37, 101, 1),
      automaticallyImplyLeading: false,
      elevation: 0.0,
      leading: null,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(
            ResponsiveLayout.isLargeScreen(context) ? 75.06 : 72),
        child: Padding(
          padding:
              EdgeInsets.symmetric(vertical: 14.4, horizontal: width * 0.0625),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Search',
                    prefixIcon: Image.asset('icons/search.png'),
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
              Visibility(
                visible: ResponsiveLayout.isLargeScreen(context),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 7.2),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 100,
                        maxHeight: 46.26,
                      ),
                      width: width * 0.15,
                      height: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Search'),
                        style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color.fromARGB(255, 36, 37, 101),
                            side: BorderSide(color: Colors.white, width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            textStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WhyChooseUs extends StatefulWidget {
  WhyChooseUs({super.key, required this.whyChooseUs});

  final List<CategoryModel> whyChooseUs;

  @override
  State<WhyChooseUs> createState() => _WhyChooseUsState();
}

class _WhyChooseUsState extends State<WhyChooseUs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveLayout.isLargeScreen(context)
          ? EdgeInsets.zero
          : EdgeInsets.only(top: 14.4, bottom: 21.6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: ResponsiveLayout.isLargeScreen(context)
                ? EdgeInsets.only(bottom: 35.64)
                : EdgeInsets.zero,
            child: Text(
              'Why Choose Us',
              style: ResponsiveLayout.isLargeScreen(context)
                  ? Styles.headingLargeStyle1()
                  : Styles.headingSmallStyle1(),
            ),
          ),
          LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: constraints.maxWidth,
                ),
                child: Container(
                  margin: ResponsiveLayout.isLargeScreen(context)
                      ? EdgeInsets.zero
                      : EdgeInsets.symmetric(vertical: 7.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: buildWhyChooseUs(),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget getWidget(int index) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            // padding: EdgeInsets.zero,
            padding: ResponsiveLayout.isLargeScreen(context)
                ? EdgeInsets.all(0)
                : EdgeInsets.symmetric(horizontal: 7.2, vertical: 10.8),
            child: Image.asset(
              widget.whyChooseUs[index].iconPath,
              fit: BoxFit.fitHeight,
              height: ResponsiveLayout.isLargeScreen(context) ? 90 : 50.4,
              // width: ResponsiveLayout.isLargeScreen(context) ? 75.6 : 63,
            ),
          ),
          SizedBox(
            height: ResponsiveLayout.isLargeScreen(context) ? 14.4 : 0,
          ),
          Flexible(
            child: Text(
              widget.whyChooseUs[index].label,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: ResponsiveLayout.isLargeScreen(context) ? 21.6 : 12.6,
                height: 1.3,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildWhyChooseUs() {
    int categoryCount = widget.whyChooseUs.length;

    return List<Widget>.generate(categoryCount, (index) {
      return getWidget(index);
    });
  }
}

class HomeSmallCategories extends StatefulWidget {
  const HomeSmallCategories({
    super.key,
    required this.categories,
  });

  final List<CategoryModel> categories;

  @override
  State<HomeSmallCategories> createState() => _HomeSmallCategoriesState();
}

class _HomeSmallCategoriesState extends State<HomeSmallCategories> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> categoryWidgets = buildCategories();
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Table(
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
            padding: EdgeInsets.symmetric(vertical: 10.8),
            child: Image.asset(
              widget.categories[index].iconPath,
              fit: BoxFit.fitHeight,
              height: 50.4,
              width: 50.4,
            ),
          ),
          Flexible(
            child: Text(
              widget.categories[index].label,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12.6,
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
