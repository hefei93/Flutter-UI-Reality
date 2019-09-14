import 'package:flutter/widgets.dart';
import 'package:friendly_forest_02/views/home.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;

    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;

    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}

const infoTextStyle = const TextStyle(
  fontSize: 13.5,
  fontWeight: FontWeight.w500,
  color: Color(0xff000000),
  fontFamily: 'Manjari',
);

const headerTextStyle = const TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.w400,
  color: Color(0xff000000),
  fontFamily: 'Manjari',
);
const AllAlign = const EdgeInsets.fromLTRB(16, 16, 16, 16);
const HomePageAlign = const EdgeInsets.only(left: 16.0);


double SizeBoxSize = 33.0;
