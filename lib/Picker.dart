import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Picker extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pickers'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoButton.filled(
              child: Text('Cupertino Picker',
                      style: TextStyle(fontSize: 20.0,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.white),),
              onPressed: (){
                showCupertinoPicker(context);
              },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoButton.filled(
              child: Text('Cupertino Date Picker',
                      style: TextStyle(fontSize: 20.0,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.white),),
              onPressed: (){
                showCupertinoDatePicker(context);
              },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoButton.filled(
              child: Text('Cupertino Time Picker',
                      style: TextStyle(fontSize: 20.0,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.white),),
              onPressed: (){
                showCupertinoTimePicker(context);
              },
              ),
            ),
          )
        ],
      ),
    );
  } 
}

void showCupertinoPicker(BuildContext context){
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context){
      return Container(
        height: 300.0,
        child: CupertinoPicker(
          itemExtent: 40,
      onSelectedItemChanged: (int index){
      },
      children: <Widget>[
        Text('iOS'),
        Text('Android'),
        Text('Flutter')
      ],
        ),
      );
    } 
  );
}

void showCupertinoDatePicker(BuildContext context){
  showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 300.0,
        child: CupertinoDatePicker(
          mode: CupertinoDatePickerMode.dateAndTime,
          use24hFormat: true,
          onDateTimeChanged: (date){

          },
        ),
      );
    }
  );
}

void showCupertinoTimePicker(BuildContext context){
  showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 300.0,
        child: CupertinoTimerPicker(
          mode: CupertinoTimerPickerMode.hm,
          onTimerDurationChanged: (time){

          },
        ),
      );
    }
  );
}