import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WidgetList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('WidgetList'),
      ),
      body: Column(
        children: <Widget>[
          Text('data'),
          SizedBox(
            height: 100.0,
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
            ListTile(
              title: Text('Cupertino ActionSheet and Alert',
                    style: TextStyle(fontSize: 25.0,
                                      fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (context) => Alert()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Cupertino Picker,DatePicker and TimePicker',
                      style: TextStyle(fontSize: 25.0,
                                      fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context) => Picker()));
              },
            ),
          
            Divider(),
            ListTile(
              title: Text('Cupertino SegmentedControl and Slider',
                      style: TextStyle(fontSize: 25.0,
                                      fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context) => Controls()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Cupertino Switch and ActivityIndicator',
                      style: TextStyle(fontSize: 25.0,
                                      fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context) => SwitchControl()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Cupertino Page Transition',
                      style: TextStyle(fontSize: 25.0,
                                      fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context) => SwitchControl()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Cupertino Popup Surface',
                      style: TextStyle(fontSize: 25.0,
                                      fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context) => SwitchControl()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Cupertino Fullscreen Dialog Transition',
                      style: TextStyle(fontSize: 25.0,
                                      fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context) => SwitchControl()));
              },
            ),
            Divider(),
          ],
        
                  ),
                )
        ],
      )
    );
  }
}


