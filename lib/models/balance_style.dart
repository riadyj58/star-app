import 'package:flutter/material.dart';

final boxdecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
      topRight: Radius.circular(10), topLeft: Radius.circular(10)),
  boxShadow: [
    BoxShadow(
      color: Colors.black54,
      offset: Offset(0.0, 4.0),
      blurRadius: 6.0,
    )
  ],
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFD45253),
      Color(0xFFd14f50),
    ],
  ),
);
final boxdecoration_bottom = BoxDecoration(
  borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
  boxShadow: [
    BoxShadow(
      color: Colors.black54,
      offset: Offset(0.0, 4.0),
      blurRadius: 6.0,
    )
  ],
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFD45253),
      Color(0xFF9E1F28),
    ],
  ),
);

final textstyle_bold = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

final textstyle = TextStyle(
  color: Colors.white,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
);
