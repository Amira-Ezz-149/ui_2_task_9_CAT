import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
   Color color = Colors.orange;
   bool isChecked = true;
   bool switchChecked = false;
   Color switchColor ;
   IconData pausePlayIcon = Icons.pause;
   IconData favIcon = Icons.favorite_outline;
   bool pausePlayPressed = true;
   bool favPressed = true;

  void changeColor(){
    print('done');
    isChecked = !isChecked;
    color = isChecked ? Colors.orange : Colors.grey.shade100;
    notifyListeners();
  }

  double infinityWidth(context){
    double width = MediaQuery.of(context).size.width;
    return width;
  }

  // int onPressedCallback(int index){
  //  // index = 5;
  //   print(index);
  //   return index;
  // }


   bool changeSwitch(){
     switchChecked = !switchChecked;
     color = switchChecked ? Colors.deepPurple : Colors.grey;
    notifyListeners();
   }


   void PauseFunc(){
     print('done');
     pausePlayPressed = !pausePlayPressed;
     pausePlayIcon = pausePlayPressed ? Icons.pause :Icons.play_arrow;
     notifyListeners();
   }


   void favFunc(){
     print('done');
     favPressed = !favPressed;
     favIcon = favPressed ? Icons.favorite :Icons.favorite_outline;
     notifyListeners();
   }


}