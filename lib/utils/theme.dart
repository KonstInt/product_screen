

import 'package:flutter/material.dart';
import 'package:mobyte_task1/utils/constants.dart';

ThemeData basicThemeData()=> ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontFamily: fFontDefault,
      color: kPrimaryTextColor,
    ),
    headline2: TextStyle(
      fontFamily: fFontDefault,
      color: kLinkTextColor,
    )
  ),
  iconTheme: const IconThemeData(color: kIconColor),
  primaryIconTheme: const IconThemeData(color: kLinkTextColor)
  );