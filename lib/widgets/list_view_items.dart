import 'package:flutter/material.dart';
import 'category_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ListViewItems extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 15.0, right: 15.0),
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(width: 15.0,),
        CategoryItem(
          title: 'Sound',
          icon: FontAwesomeIcons.music,
        ),
        SizedBox(width: 15.0,),
        CategoryItem(
          title: 'Fan',
          // icon: ,
          icon:FontAwesomeIcons.fan,
        ),
        SizedBox(width: 15.0,),
        CategoryItem(
          title: 'Light',
          icon: Icons.lightbulb,
        ),
        SizedBox(width: 15.0,),
        CategoryItem(
          title: 'Heater',
          icon: FontAwesomeIcons.fire,
        ),
        SizedBox(width: 15.0,),
        CategoryItem(
          title: 'shopping',
          icon: FontAwesomeIcons.shoppingCart,
        ),
      ],
    );
  }
}
