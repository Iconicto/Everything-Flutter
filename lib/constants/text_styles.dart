import 'package:everything_flutter/constants/text_size.dart';
import 'package:everything_flutter/helpers/screen_util.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static final TextStyle title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil.getTextSize(TextSize.title),
  );

  static final TextStyle miniTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil.getTextSize(TextSize.miniTitle),
  );

  static final TextStyle subtitle = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: ScreenUtil.getTextSize(TextSize.subtitle),
    color: Colors.black54,
  );
}
