import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_task_9_2_cat/tools/my_provider.dart';
import 'package:ui_task_9_2_cat/widgets/customized_profile_picture.dart';
import 'package:ui_task_9_2_cat/widgets/grid_view_items.dart';
import '../constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (_)=>MyProvider(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Text(
                    'Welcome home', style: TextStyle(color: Colors.grey),),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const Text(
                        'Alex Tobey',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
                      ),
                      CustomizedProfilePicture(
                          size: 50, imageLink: 'assets/images/girl.jpg'),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.orange.shade100,
                          child: Text('⚡')),
                      SizedBox(width: 15.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                             const Text(
                                '20.3',
                                style: TextStyle(
                                    fontSize: 20.0, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'kwh',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(.7)),
                              ),
                            ],
                          ),
                         const Text(
                            'power usage of today',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  ChangeNotifierProvider(
                    create: (_) => MyProvider(),
                    child: GridViewItems(),
                  ),
                  SizedBox(height: 20.0,),

                  ///bottom Container
                  Consumer<MyProvider>(
                      builder: (BuildContext context, value, child) => Container(
                        padding: EdgeInsets.only(top:20.0, left: 20.0, bottom: 20.0, right: 20.0),
                        decoration: kContainerDecoration.copyWith(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(60.0),
                            topRight: Radius.circular(60.0),
                          ),
                        ),
                        //  width: width,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CustomizedProfilePicture(
                                      imageLink: 'assets/images/girl.jpg',
                                      size: 60,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                       const Text(
                                          'Worry About Me',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Ellie Goulding, blackbear',
                                          style: TextStyle(
                                              color: Colors.white.withOpacity(.6)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        Provider.of<MyProvider>(context, listen: false).favFunc();
                                      },
                                      child: Icon(
                                          Provider.of<MyProvider>(context).favIcon, color: Colors.white,

                                      ),
                                    ),
                                    SizedBox(width: 5.0),
                                    GestureDetector(
                                      onTap: (){
                                        Provider.of<MyProvider>(context, listen: false).PauseFunc();
                                      },
                                      child: Container(
                                          decoration: kContainerDecoration.copyWith(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.orange,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.deepPurple.shade300,
                                                offset: Offset(0, 0), //(x,y)
                                                blurRadius: 1,
                                              ),
                                            ],
                                          ),
                                          padding: EdgeInsets.all(5.0),
                                          child: Icon(Provider.of<MyProvider>(context).pausePlayIcon, color: Colors.white,),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.orange.shade200,
        color: Colors.white,
        items: [
          Icon(Icons.home, size: 30.0,color: Colors.deepPurple,),
          Icon(Icons.group, size: 30.0, color: Colors.deepPurple),
          Icon(Icons.power, size: 30.0, color: Colors.deepPurple),
          Icon(Icons.settings, size: 30.0, color: Colors.deepPurple),

        ],
      )
    );
  }
}
