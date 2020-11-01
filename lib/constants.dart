import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//colours
final activeBtnColor = Colors.black87;
final inActiveBtnColor = Colors.grey[200];

final activeIconColor = Colors.white;
final inActiveIconColor = Colors.grey[300];

final kInvisibleSeatColor = Colors.white54;

final kPrimaryColor = Colors.deepPurple;
const kPrimaryTextColor = Color(0xFF212121);
const kSecondaryTextColor = Color(0xFF757575);
const kDividerColor = Color(0xFFBDBDBD);

const kScaffoldBgColor = Color(0xFFF2F2F2);
const kHomeBtnColor = Color(0xFF6F5A7E);

//tola colors
const kTolaDarkGrey = Color(0xFFEDEDF0);
const kTolaLightGrey = Color(0xFFF2F2F2);

const kBottomContainerHeight = 56.0;
const kBottomContainerColour = Color(0xFFFFD600);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w600,
);

const kCardTextStyleNormal =
    TextStyle(fontSize: 14.0, color: kPrimaryTextColor);
const kCardTextStyleBold = TextStyle(
    fontSize: 14.0, fontWeight: FontWeight.w800, color: kPrimaryTextColor);

const kSeatIconSize = 48.0;

//seat colours
final kAvailableSeatColour = Colors.blue;
final kReservedSeatColour = Colors.purple[300];
final kBookedSeatColour = Colors.grey[300];
final kSelectedSeatColour = Colors.green;

//Database constants
final _firestore = Firestore.instance;
final tripRef = _firestore.collection('/trips');
final seatsRef =
_firestore.collection('/trips').document().collection('/seats');


