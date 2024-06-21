import 'package:flutter/material.dart';

class PageData {
  final String? title;
  final String? title1;
  final String? title2;

  final String? image;
  final Color bgColor;
  final Color textColor;

  const PageData({
    this.title,
    this.title1,
    this.title2,
    this.image,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
  });
}
