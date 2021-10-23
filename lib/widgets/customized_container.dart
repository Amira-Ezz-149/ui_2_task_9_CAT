import 'package:flutter/material.dart';
import 'package:ui_task_9_2_cat/screens/room_details.dart';
import 'package:ui_task_9_2_cat/tools/my_provider.dart';
import '../constants.dart';
import 'package:provider/provider.dart';
class CustomizedContainer extends StatefulWidget {
  const CustomizedContainer({
     this.icon,
     this.title,
     this.numOfDevices,
     this.index,

  });

  final IconData icon;
  final String title;
  final int numOfDevices;
  final int index;

  @override
  _CustomizedContainerState createState() => _CustomizedContainerState();
}

class _CustomizedContainerState extends State<CustomizedContainer> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
        builder: (BuildContext context, value, child) =>  GestureDetector(

          onTap: () {
            setState(() {
              checked =!checked;
            });
            Provider.of<MyProvider>(context, listen: false)
                .changeColor();
           Navigator.push(context, MaterialPageRoute(builder: (context)=> RoomDetails(title: widget.title)));

          },
          child: Container(
            padding: EdgeInsets.all(15.0),
            decoration: kContainerDecoration.copyWith(color: checked? Colors.orange: Colors.grey.shade100),
            width: 100,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(widget.icon, color: checked ? Colors.white : Colors.orange),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                          color: checked ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${widget.numOfDevices} device',
                      style: TextStyle(
                          fontSize: 12.0, color: Colors.black.withOpacity(.4)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
