import 'package:everything_flutter/model/news.dart';
import 'package:everything_flutter/widgets/news_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//  final model = HomeModel();
  ScreenScaler _scaler;

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
    "Groups",
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

  @override
  void initState() {
//    model.dispose(FetchNewsData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _scaler = ScreenScaler()..init(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildAppBar(),
              Text(
                "Your Timeline",
                style: TextStyle(
                  fontSize: _scaler.getTextSize(14),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: _scaler.getHeight(1)),
              _buildMenuItems(),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  _scaler.getWidth(6),
                  _scaler.getHeight(2),
                  _scaler.getWidth(6),
                  _scaler.getHeight(2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Your News Feed",
                      style: TextStyle(
                        fontSize: _scaler.getTextSize(14),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                      size: _scaler.getTextSize(14),
                    ),
                  ],
                ),
              ),
//              StreamBuilder(
//                stream: model.homeState,
//                builder: (context, snapshot) {
//                  if (snapshot.hasError) {
//                    return _getInformationMessage(snapshot.error.toString());
//                  }
//
//                  var homeState = snapshot.data;
//
//                  if (!snapshot.hasData || homeState is BusyHomeState) {
//                    return Center(child: CircularProgressIndicator());
//                  }
//
//                  if (homeState is NewsFetchedHomeState) {
//                    if (!homeState.hasData) {
//                      return _getInformationMessage(
//                          'No data found! Please try again!');
//                    }
//                  }
//
//                  return _buildNewsStand(homeState.data);
//                },
//              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildAppBar() {
    return Padding(
      padding: EdgeInsets.all(_scaler.getHeight(2.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.menu),
          Text(
            "${DateFormat("MMM d, yyyy").format(DateTime.now())}",
            style: TextStyle(
//                        color: Color(0xFF545454),
              color: Colors.black54,
              fontSize: _scaler.getTextSize(11),
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  Container _buildMenuItems() {
    return Container(
      height: _scaler.getWidth(90),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(_scaler.getWidth(3)),
            child: Container(
              width: _scaler.getWidth(70),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: pastelColors[index],
                image: DecorationImage(
                  image: AssetImage(imageAssets[index]),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    pastelColors[index],
                    BlendMode.hardLight,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(_scaler.getWidth(5)),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(_scaler.getWidth(1.5)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white70,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(_scaler.getWidth(3)),
                          child: Text(
                            newsTitles[index],
                            style: TextStyle(
                              fontSize: _scaler.getTextSize(15),
                              fontWeight: FontWeight.w800,
                              color: titleColors[index],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(_scaler.getWidth(3), 8.0,
                              _scaler.getWidth(3), 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () => Navigator.pushNamed(
                                    context, newsTitles[index]),
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: buttonColors[index],
                                      boxShadow: [
                                        new BoxShadow(
                                          color: buttonColors[index],
                                          blurRadius: 8.0,
                                        ),
                                      ]),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "GO",
                                        style: TextStyle(
                                            fontSize: _scaler.getTextSize(12),
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                      SizedBox(width: _scaler.getWidth(1)),
                                      Icon(Icons.arrow_forward_ios,
                                          size: _scaler.getTextSize(11),
                                          color: Colors.white)
                                    ],
                                  ),
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
          return SizedBox(width: _scaler.getWidth(1));
        },
      ),
    );
  }

  Widget _buildNewsStand(List<News> newsList) {
    List<Widget> _columnItems = [];
    for (var news in newsList) {
      _columnItems.add(NewsItem(news));
      _columnItems.add(Divider());
    }
    return Column(children: _columnItems);
  }

  News newsItem = News(
    title: "How we built Flutter app presented at MWC'19 in one month",
    time: DateTime.now().subtract(
      Duration(minutes: 55),
    ),
    image:
        "https://blog.codemagic.io/uploads/2019/02/CM-Flutter-experience.jpg",
    source: Source(name: "MEDIUM"),
  );

  News newsItemTwo = News(
    title: "A Lookback Into Flutter 1.5 – The Biggest Google Release of 2019",
    time: DateTime.parse("2019-06-30T22:45:52.326000+05:30"),
    image: "https://cdn.iconicto.com/EverythingFlutter/media/News/ef1.png",
    link: "https://appinventiv.com/blog/flutter-1-5-highlights/",
    source: Source(name: "Appinventiv"),
  );

  News newsItemThree = News(
    title:
        "Google’s Flutter framework spreads its wings and goes multi-platform",
    time: DateTime.parse("2019-06-30T22:49:51.764000+05:30"),
    link:
        "https://techcrunch.com/2019/05/07/googles-flutter-framework-spreads-its-wings-and-goes-multi-platform/",
    image: "https://cdn.iconicto.com/EverythingFlutter/media/News/ef3.jpg",
    source: Source(name: "Techcrunch"),
  );

  Widget _getInformationMessage(String message) {
    return Center(
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.w900, color: Colors.grey[500]),
      ),
    );
  }

//  Padding _buildNewsCard() {
//    return Padding(
//      padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 16.0),
//      child: Container(
//        decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(20.0),
//        ),
//        child: Row(
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: ClipRRect(
//                borderRadius: BorderRadius.circular(12.0),
//                child: Image.network(
//                  'https://blog.codemagic.io/uploads/2019/02/CM-Flutter-experience.jpg',
//                  height: 120,
//                  width: 100,
//                  fit: BoxFit.cover,
//                ),
//              ),
//            ),
//            Expanded(
//              child: Container(
//                height: 120,
//                child: Column(
//                  mainAxisSize: MainAxisSize.max,
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: Text(
//                        "How we built Flutter app presented at MWC'19 in one month",
//                        softWrap: true,
//                        maxLines: 3,
//                        style: TextStyle(
//                          fontSize: 16,
//                          fontWeight: FontWeight.w700,
//                        ),
//                      ),
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.all(10.0),
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Text(
//                            "MEDIUM",
//                            style: TextStyle(
//                              color: Color(0xFF40ACF9),
//                              fontSize: 13,
//                              fontWeight: FontWeight.w500,
//                            ),
//                          ),
//                          Text(
//                            "15 min ago",
//                            style: TextStyle(
//                              color: Colors.black54,
//                              fontSize: 13,
//                              fontWeight: FontWeight.w300,
//                            ),
//                          ),
//                        ],
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }

//  Padding _buildCardInformation(int index) {
//    return Padding(
//      padding: const EdgeInsets.all(4.0),
//      child: Column(
//        mainAxisSize: MainAxisSize.min,
//        children: <Widget>[
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Text(
//              newsTitles[index],
//              style: TextStyle(
//                fontSize: 25,
//                fontWeight: FontWeight.w500,
//              ),
//            ),
//          ),
//          Padding(
//            padding: EdgeInsets.all(8.0),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.end,
//              children: <Widget>[
//                Container(
//                  padding: EdgeInsets.all(8.0),
//                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(10.0),
//                      color: buttonColors[index]),
//                  child: Row(
////                                          mainAxisSize: MainAxisSize.min,
//                    children: <Widget>[
//                      Text(
//                        "Go",
//                        style: TextStyle(
//                          fontSize: 20,
//                          fontWeight: FontWeight.w300,
//                        ),
//                      ),
//                      SizedBox(width: 10),
//                      Icon(
//                        Icons.arrow_forward_ios,
//                        size: 15,
//                      )
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          ),
//
////                                    Padding(
////                                      padding: const EdgeInsets.all(8.0),
////                                      child: Row(
////                                        mainAxisAlignment:
////                                            MainAxisAlignment.spaceBetween,
////                                        children: <Widget>[
////                                          Text(
////                                            newsCategories[index],
////                                            style: TextStyle(
////                                              color: Color(0xFF40ACF9),
////                                              fontSize: 11,
////                                              fontWeight: FontWeight.w300,
////                                            ),
////                                          ),
////                                          Text(
////                                            newsDates[index],
////                                            style: TextStyle(
////                                              color: Color(0xFF545454),
////                                              fontSize: 12,
////                                              fontWeight: FontWeight.w300,
////                                            ),
////                                          ),
////                                        ],
////                                      ),
////                                    ),
//        ],
//      ),
//    );
//  }
}
