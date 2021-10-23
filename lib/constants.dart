import 'package:flutter/material.dart';

BoxDecoration kContainerDecoration =BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: Colors.grey.shade300,
      offset: Offset(0, 7), //(x,y)
      blurRadius: 5,
    ),
  ],
  borderRadius: BorderRadius.circular(15.0),
  color: Colors.grey.shade100,
);


BoxDecoration kContainerTemperature = BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: Colors.deepPurple.shade100,
      offset: Offset(5, 7), //(x,y)
      blurRadius: 15,
    ),
  ],
  shape: BoxShape.circle,
);
