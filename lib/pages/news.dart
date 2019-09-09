import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key key}) : super(key: key);

  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Sept 8, 2019",
                        style: TextStyle(
                          color: Color(0xFF545454),
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.white,
                  ),
                  Positioned(
                    child: Container(
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Color(0xFFFD987C),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 280,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Text(
                                "Amber Rudd quits government over Johnson's Brexit stance",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  16.0, 8.0, 16.0, 4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "GOVERMENT",
                                    style: TextStyle(
                                      color: Color(0xFF40ACF9),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Text(
                                    "September 7th, 2019",
                                    style: TextStyle(
                                      color: Color(0xFF545454),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  16.0, 16.0, 16.0, 4.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Amber Rudd has quit the cabinet and surrendered the Conservative whip saying she cannot stand by while moderate Conservatives are expelled. The work and pensions secretary said she no longer believed leaving the EU with a deal was the government's main objective. ",
                                    style: TextStyle(
                                      color: Color(0xFF545454),
                                      fontSize: 15,
                                      letterSpacing: 0.2,
                                      fontWeight: FontWeight.w100,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                  SizedBox(height: 25),
                                  Text(
                                      "Ms Rudd described the sacking of 21 Tory MPs on Tuesday as an assault on decency and democracy. No 10 said it was disappointed by the resignation of a talented minister.But a spokesperson added that all ministers who joined the Cabinet signed up to leaving the EU on 31 October come what may.",
                                      style: TextStyle(
                                        color: Color(0xFF545454),
                                        fontSize: 15,
                                        letterSpacing: 0.2,
                                        fontWeight: FontWeight.w100,
                                      ),
                                      textAlign: TextAlign.justify)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Positioned(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: SingleChildScrollView(
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           children: <Widget>[
//                             Padding(
//                               padding: const EdgeInsets.fromLTRB(
//                                   16.0, 4.0, 16.0, 4.0),
//                               child: Text(
//                                 "Amber Rudd quits government over Johnson's Brexit stance",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.fromLTRB(
//                                   16.0, 4.0, 16.0, 4.0),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: <Widget>[
//                                   Text(
//                                     "GOVERMENT",
//                                     style: TextStyle(
//                                       color: Color(0xFF40ACF9),
//                                       fontSize: 11,
//                                       fontWeight: FontWeight.w300,
//                                     ),
//                                   ),
//                                   Text(
//                                     "September 7th, 2019",
//                                     style: TextStyle(
//                                       color: Color(0xFF545454),
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w300,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.fromLTRB(
//                                   16.0, 16.0, 16.0, 4.0),
//                               child: Column(
//                                 children: <Widget>[
//                                   Text(
//                                     "Amber Rudd has quit the cabinet and surrendered the Conservative whip saying she cannot stand by while moderate Conservatives are expelled. The work and pensions secretary said she no longer believed leaving the EU with a deal was the government's main objective. ",
//                                   ),
//                                   SizedBox(height: 10),
//                                   Text(
//                                       "Ms Rudd described the sacking of 21 Tory MPs on Tuesday as an assault on decency and democracy. No 10 said it was disappointed by the resignation of a talented minister.But a spokesperson added that all ministers who joined the Cabinet signed up to leaving the EU on 31 October come what may.")
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
