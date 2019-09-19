import 'package:everything_flutter/helpers/utils.dart';
import 'package:everything_flutter/model/news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:timeago/timeago.dart' as timeago;

class NewsItem extends StatelessWidget {
  final News _news;

  NewsItem(this._news);

  @override
  Widget build(BuildContext context) {
    final ScreenScaler _scaler = ScreenScaler()..init(context);

    return GestureDetector(
      onTap: () {
        print("hi");
        Utils.launchURL(_news.link);
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(_scaler.getWidth(3), _scaler.getHeight(1),
            _scaler.getWidth(3), _scaler.getHeight(1)),
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
                    _news.image,
                    height: _scaler.getHeight(15),
                    width: _scaler.getWidth(25),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: _scaler.getHeight(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          _news.title,
                          softWrap: true,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: _scaler.getTextSize(12),
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
                              _news.source.name.toUpperCase(),
                              style: TextStyle(
                                color: Color(0xFF40ACF9),
                                fontSize: _scaler.getTextSize(10),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              timeago.format(_news.time),
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: _scaler.getTextSize(10),
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
      ),
    );
  }
}
