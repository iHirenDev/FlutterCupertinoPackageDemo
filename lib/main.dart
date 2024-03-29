import 'package:cupertino_demo/Alert.dart';
import 'package:cupertino_demo/Picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_demo/WidgetList.dart';
import 'package:cupertino_demo/Controls.dart';
import 'package:cupertino_demo/SwitchControl.dart';
import 'package:cupertino_demo/Buttons.dart';


void main(){
  runApp(MaterialApp(
    home: CupertinoDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class CupertinoDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Demo')),   
        body: Column(
          children: <Widget>[
            Image.asset('assests/flutter_logo.png'),
            Expanded(
              child: CupertinoWidgetList(),
            ),
          ],
        )
    );
  }
}

class CupertinoWidgetList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return _widgetList(context);
  } 
}

Widget _widgetList(BuildContext context){
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('Cupertino ActionSheet and Alert',
               style: TextStyle(fontSize: 25.0,
                                fontWeight: FontWeight.bold),),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Alert()));
        },
      ),
      Divider(),
      ListTile(
        title: Text('Cupertino Picker,DatePicker and TimePicker',
                style: TextStyle(fontSize: 25.0,
                                fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Picker()));
        },
      ),
    
      Divider(),
      ListTile(
        title: Text('Cupertino SegmentedControl and Slider',
                style: TextStyle(fontSize: 25.0,
                                fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Controls()));
        },
      ),
      Divider(),
      ListTile(
        title: Text('Cupertino Switch and ActivityIndicator',
                style: TextStyle(fontSize: 25.0,
                                fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SwitchControl()));
        },
      ),
      Divider(),
      ListTile(
        title: Text('Cupertino Button',
                style: TextStyle(fontSize: 25.0,
                                fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Buttons()));
        },
      ),
      Divider(),
      ListTile(
        title: Text('Cupertino Popup Surface',
                style: TextStyle(fontSize: 25.0,
                                fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.keyboard_arrow_right),
        /*onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SwitchControl()));
        },*/
      ),
      Divider(),
      ListTile(
        title: Text('Cupertino Fullscreen Dialog Transition',
                style: TextStyle(fontSize: 25.0,
                                fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.keyboard_arrow_right),
        /*onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => WidgetList()));
        },*/
      ),
      Divider(),
    ],
  );
}