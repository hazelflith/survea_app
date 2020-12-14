import 'package:flutter/material.dart';

class UIHelper {
//  static Size appBarHeight = Size.fromHeight(50);
//  static Size appBarHeightWithTabs = Size.fromHeight(100);

  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  static double _extraSmallSpace = 8;
  static double _smallSpace = 12;
  static double _mediumSpace = 30;
  static double _largeSpace = 80;
  static double _extraLargeSpace = 110;

  static void init(BuildContext context) {
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

  //h for horizontal , v for vertical
  static Widget hSpaceXSmall() => SizedBox(width: _extraSmallSpace);
  static Widget hSpaceSmall() => SizedBox(width: _smallSpace);
  static Widget hSpaceMedium() => SizedBox(width: _mediumSpace);
  static Widget hSpaceLarge() => SizedBox(width: _largeSpace);
  static Widget hSpaceXLarge() => SizedBox(width: _extraLargeSpace);

  static Widget vSpaceXSmall() => SizedBox(height: _extraSmallSpace);
  static Widget vSpaceSmall() => SizedBox(height: _smallSpace);
  static Widget vSpaceMedium() => SizedBox(height: _mediumSpace);
  static Widget vSpaceLarge() => SizedBox(height: _largeSpace);
  static Widget vSpaceXLarge() => SizedBox(height: _extraLargeSpace);

  static Color blue = Color(0xFF003e75);
  // static Color blue = Color(0xFF0E1A43);
  static Color lightBlue = Color(0xFFEDF3F9);
  static Color blueTosca = Color(0xFF53D2DB);
  static Color pink = Color(0xFFFF826E);
  static Color orange = Color(0xFFFFC05F);
  static Color grayText = Color(0xFF606060);
  static Color surveaBlue = Color(0xFF334D6E);
  static Color surveaGreen = Color(0xFF8BD8BD);

  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = UIHelper.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 640.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = UIHelper.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 360.0) * screenWidth;
}
