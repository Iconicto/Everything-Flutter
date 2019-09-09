import 'package:flutter/material.dart';

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
    Color(0xFFF5A9FD),
  ];
  
  List<Color> buttonColors = [
    Color(0xFFFB957C),
    Color(0xFF54F0F8),
    Color(0xFFbaed91),
    Color(0xFF8DA5FA),
  ];

  List<String> newsTitles = [
    "Events",
    "Widgets",
    "Communities",
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
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu),
                    Text(
                      "Sept 8, 2019",
                      style: TextStyle(
                        color: Color(0xFF545454),
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Your Timeline",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 420.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: 295.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: pastelColors[index],
                          image: DecorationImage(
                            image:
                                AssetImage(imageAssets[index]),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(pastelColors[index], BlendMode.hardLight)
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.white,
                              ),
                              child: Padding(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
