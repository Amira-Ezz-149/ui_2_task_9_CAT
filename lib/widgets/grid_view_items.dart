import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_task_9_2_cat/tools/my_provider.dart';
import 'customized_container.dart';

class GridViewItems extends StatefulWidget {

  @override
  _GridViewItemsState createState() => _GridViewItemsState();
}

class _GridViewItemsState extends State<GridViewItems> {
  bool checked = true;

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: [
        /// bathroom
        Consumer<MyProvider>(
          builder: (BuildContext context, value, child) =>
              CustomizedContainer(
                title: 'Bath Room',
                icon: Icons.bathtub_outlined,
                numOfDevices: 1,
              ),
        ),

        /// living room
        Consumer<MyProvider>(
            builder: (BuildContext context, value, child) =>
                CustomizedContainer(
                  title: 'Living Room',
                  icon: Icons.tv,
                  numOfDevices: 2,
                )),

        /// kitchen
        Consumer<MyProvider>(
          builder: (BuildContext context, value, child) =>
              CustomizedContainer(
                title: 'Kitchen',
                icon: Icons.kitchen_outlined,
                numOfDevices: 3,
              ),
        ),

        ///dining room
        Consumer<MyProvider>(
          builder: (BuildContext context, value, child) =>
              CustomizedContainer(
                title: 'Dining Room',
                icon: Icons.dinner_dining,
                numOfDevices: 5,
              ),
        ),
      ],
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,

        ///change the height of container
        childAspectRatio: 4 / 4,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
