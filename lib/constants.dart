import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//colours
final activeBtnColor = Colors.grey[300];
final inActiveBtnColor = Colors.grey[200];

final activeIconColor = Colors.grey[800];
final inActiveIconColor = Colors.grey[300];
final kInvisibleSeatColor = Colors.white54;

final kPrimaryColor = Colors.deepPurple;
final kPrimaryTextColor = Color(0xFF212121);
final kSecondaryTextColor = Color(0xFF757575);
final kDividerColor = Color(0xFFBDBDBD);

final kScaffoldBgColor = Color(0xFFF8F6F8);
final kHomeBtnColor = Color(0xFF6F5A7E);

const kBottomContainerHeight = 56.0;
final kBottomContainerColour = Colors.amber;

const kLargeButtonTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w600,
);

final kCardTextStyleNormal =
    TextStyle(fontSize: 14.0, color: kPrimaryTextColor);
final kCardTextStyleBold = TextStyle(
    fontSize: 14.0, fontWeight: FontWeight.w800, color: kPrimaryTextColor);

const kSeatIconSize = 48.0;

//Database constants
final _firestore = Firestore.instance;
final tripRef = _firestore.collection('/trips');
