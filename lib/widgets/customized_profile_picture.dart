import 'package:flutter/material.dart';

class CustomizedProfilePicture extends StatelessWidget {
  String imageLink;
  double size;
  CustomizedProfilePicture({this.imageLink, this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
              image: AssetImage(imageLink))),
    );
  }
}