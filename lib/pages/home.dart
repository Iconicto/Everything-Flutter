import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> pastelColors = [
    Color(0xFFfd987c),
    Color(0xFF55DFDE),
    Color(0xFFbaed91),
    Color(0xFFB290FC),
  ];

  List<Color> titleColors = [
    Color(0xFFFB886D),
    Color(0xFF3FE6EF),
    Color(0xFF91ECB7),
    Color(0xFF7B8CFA),
  ];

  List<Color> buttonColors = [
    Color(0xFFFB957C),
    Color(0xFF54F0F8),
    Color(0xFF9BEFC7),
    Color(0xFF8DA5FA),
  ];

  List<String> newsTitles = [
    "Events",
    "Widgets",
    "Community",
    "Tutorials",
  ];

  List<String> newsCategories = [
    "BUSINESS",
    "SPORTS",
    "TECHNOLOGY",
    "GOVERNMENT",
  ];

  List<String> newsDates = [
    "March 12, 2019",
    "September 4, 2019",
    "August 21, 2019",
    "October 18, 2018",
  ];

  List<String> imageAssets = [
    'assets/images/dashboard_hero.jpg',
    'assets/images/dashboard_widgets.jpg',
    'assets/images/dashboard_community.jpg',
    'assets/images/dashboard_customize.jpg',
  ];

  // final Container appBarDrawer = Container(
  //   height: 15,
  //   width: 10,
  //   child: Row(
  //     children: <Widget>[
  //       Container(
  //         height: 5,
  //         width: 10,
  //         color: Colors.black,
  //       ),
  //       Container(
  //         height: 5,
  //         width: 10,
  //         color: Colors.black,
  //       ),
  //       Container(
  //         height: 5,
  //         width: 10,
  //         color: Colors.black,
  //       )
  //     ],
  //   ),
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu),
                    Text(
                      "${DateFormat("MMM d, yyyy").format(DateTime.now())}",
                      style: TextStyle(
//                        color: Color(0xFF545454),
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2),
              Text(
                "Your Timeline",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 400.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: 290.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: pastelColors[index],
                          image: DecorationImage(
                              image: AssetImage(imageAssets[index]),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  pastelColors[index], BlendMode.hardLight)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.white70,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      newsTitles[index],
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w800,
                                          color: titleColors[index]),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        10.0, 8.0, 10.0, 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(8.0),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: buttonColors[index],
                                              boxShadow: [
                                                new BoxShadow(
                                                  color: buttonColors[index],
                                                  blurRadius: 8.0,
                                                ),
                                              ]),
                                          child: Row(
//                                          mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Text(
                                                "GO",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w800,
                                                    color: Colors.white),
                                              ),
                                              SizedBox(width: 5),
                                              Icon(Icons.arrow_forward_ios,
                                                  size: 15, color: Colors.white)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 4,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 2);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Your News Feed",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    _buildNewsCard(),
                    _buildNewsCard(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildNewsCard() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://blog.codemagic.io/uploads/2019/02/CM-Flutter-experience.jpg',
                  height: 120,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 120,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "How we built Flutter app presented at MWC'19 in one month",
                        softWrap: true,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "MEDIUM",
                            style: TextStyle(
                              color: Color(0xFF40ACF9),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "15 min ago",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildCardInformation(int index) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              newsTitles[index],
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: buttonColors[index]),
                  child: Row(
//                                          mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Go",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

//                                    Padding(
//                                      padding: const EdgeInsets.all(8.0),
//                                      child: Row(
//                                        mainAxisAlignment:
//                                            MainAxisAlignment.spaceBetween,
//                                        children: <Widget>[
//                                          Text(
//                                            newsCategories[index],
//                                            style: TextStyle(
//                                              color: Color(0xFF40ACF9),
//                                              fontSize: 11,
//                                              fontWeight: FontWeight.w300,
//                                            ),
//                                          ),
//                                          Text(
//                                            newsDates[index],
//                                            style: TextStyle(
//                                              color: Color(0xFF545454),
//                                              fontSize: 12,
//                                              fontWeight: FontWeight.w300,
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
        ],
      ),
    );
  }
}
