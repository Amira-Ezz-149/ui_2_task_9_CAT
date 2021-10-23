import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:provider/provider.dart';
import 'package:ui_task_9_2_cat/tools/my_provider.dart';
import 'package:ui_task_9_2_cat/widgets/category_item.dart';

class RoomDetails extends StatelessWidget {
  @required
  final String title;

  const RoomDetails({this.title});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {
            double width = MediaQuery.of(context).size.width;
            print(width);
          },
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: ChangeNotifierProvider(
        create: (_) => MyProvider(),
        child: Column(
          children: [
            Container(
              height: height / 6,
              child: ListView(
                padding: EdgeInsets.only(top: 15.0),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 15.0,),
                  CategoryItem(
                    title: 'Sound',
                    icon: Icons.music_note_outlined,
                  ),
                  SizedBox(width: 15.0,),
                  CategoryItem(
                    title: 'Fan',
                    icon: Icons.airline_seat_flat,
                  ),
                  SizedBox(width: 15.0,),
                  CategoryItem(
                    title: 'Light',
                    icon: Icons.lightbulb,
                  ),
                  SizedBox(width: 15.0,),
                  CategoryItem(
                    title: 'Heater',
                    icon: Icons.music_note_outlined,
                  ),
                  SizedBox(width: 15.0,),
                  CategoryItem(
                    title: 'Heater',
                    icon: Icons.music_note_outlined,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0,),
            Expanded(
                child: Consumer<MyProvider>(
                  builder: (context, value, child)=> SingleCircularSlider(
                    100,
                    0,
                    child: Center(
                      child: Text.rich(
                      TextSpan(
                        children: [
                         const TextSpan(
                            text: '18.5 ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                         const TextSpan(
                              text: '°C',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 20.0),),
                        ],
                      ),
                    ),
                    ),
                    height: 200,
                    width: 200,
                    primarySectors: 4,
                    sliderStrokeWidth: 10.0,
                    baseColor: Colors.deepPurple.shade50,
                    shouldCountLaps: true,
                    handlerColor: Colors.deepPurple,
                    selectionColor: Colors.deepPurple.shade300,
                  ),

                )

                ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text(
                      'Current temperature',
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                         const TextSpan(
                            text: '16.5 ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                         const TextSpan(
                              text: '°C',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 20.0)),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text('Current Humidity',
                        style: TextStyle(color: Colors.grey, fontSize: 15.0)),
                   const Text('60%',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 40.0, right: 20.0),
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                 const Text(
                    'Turn Off/On',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  Consumer<MyProvider>(
                    builder: (BuildContext context, value, child) => Switch(
                      value: Provider.of<MyProvider>(context).switchChecked,
                      onChanged: (e) =>
                          Provider.of<MyProvider>(context, listen: false)
                              .changeSwitch(),

                      /// active circle
                      activeColor: Provider.of<MyProvider>(context).color,

                      ///active background
                      activeTrackColor: Colors.deepPurple.shade100,

                      ///inactive circle
                      inactiveThumbColor: Colors.white,

                      ///inactive background
                      inactiveTrackColor: Colors.grey.shade300,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0,),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60.0, vertical: 15),
                child: const Text('Set Temperature'),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 50.0,)
          ],
        ),
      ),
    );
  }
}
