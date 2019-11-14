import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Controls extends StatefulWidget{
  @override
  _ControlsState createState() => _ControlsState();
}

class _ControlsState extends State<Controls> {

  final Map<int,Widget> segments = const<int, Widget>{
    0:Text('One'),
    1:Text('Two'),
    2:Text('Three'),
  };

  int currentSegment = 0;

  void onValueChanged(int newValue){
    setState(() {
      currentSegment = newValue;
    });
  }

  int _sliderValue = 0;
  //double _descreteValue = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controls'),
      ),

      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Text('Cupertino Segmented Control',
                style: TextStyle(color: Colors.blueGrey,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 30.0),),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoSegmentedControl<int>(
              children: segments,
              onValueChanged: onValueChanged,
              groupValue: currentSegment,
              //borderColor: Colors.teal,
              //selectedColor: Colors.amberAccent,
              ),
            ),
          ),
          Text('Selected segment: $currentSegment',
               style: TextStyle(color: Colors.blueGrey,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 30.0),),
          SizedBox(height: 50.0,),
          Text('Cupertino Slider',
                style: TextStyle(color: Colors.blueGrey,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 40.0),),
          
          SizedBox(
            width: double.infinity,
                      child: CupertinoSlider(
                      value: _sliderValue.toDouble(),
                      min: 0.0,
                      max: 100.0,
                      divisions: 100,
                      onChanged: (double value){
                        setState(() {
                          _sliderValue = value.toInt();
                        });
                      },
                    ),
          ),

          Text('Slider selection: $_sliderValue',
                style: TextStyle(color: Colors.blueGrey,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 30.0),)
        ],
      ),
    );
  }
}