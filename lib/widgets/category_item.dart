import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
   String title;
   IconData icon;
   int index;
   Color backColor = Colors.white;

   CategoryItem({ this.title, this.icon, this.index, this.backColor});

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
   int selectedIndex;
   bool checked = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          checked=!checked;
        });
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            // backgroundColor: Colors.grey.shade400,
            backgroundColor:  checked? Colors.grey.shade300:Colors.white,
            child: CircleAvatar(
              backgroundColor: checked? Colors.grey.shade100: Colors.orange,
              child: Icon(
                widget.icon,
                color:checked? Colors.grey.shade400 : Colors.white,
              ),
              radius: 33,
            ),
          ),
          Text(
            widget.title,
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
