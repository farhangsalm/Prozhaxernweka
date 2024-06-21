import 'package:flutter/material.dart';

void main() {}

Color primaryGreen = Color(0xff416d6d);
Color ahmad = Color.fromARGB(100, 32, 32, 62);

List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey, blurRadius: 30, offset: Offset(0, 10)),
];
Color bordar = Color(0xffDCEDF9);

List<BoxShadow> t = [
  BoxShadow(color: Colors.grey, blurRadius: 30, offset: Offset(0, 10)),
];
List<Map> drawerItems = [
  {
    'icon': Icons.person_2_rounded,
    'title': 'هەژمارەکم',
  },
  {
    'icon': Icons.favorite_border_rounded,
    'title': 'خوازراو',
  },
  {
    'icon': Icons.favorite,
    'title': 'خوازراو',
  },
  {
    'icon': Icons.favorite,
    'title': 'خوازراو',
  },
  {
    'icon': Icons.favorite,
    'title': 'خوازراو',
  },
  {
    'icon': Icons.favorite,
    'title': 'خوازراو',
  },
  {
    'icon': Icons.favorite,
    'title': 'خوازراو',
  }
];

class sizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenwidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenwidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenwidth! / 100;

    blockSizeVertical = screenHeight! / 100;
  }
}
