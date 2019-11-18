import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SwitchControl extends StatefulWidget {
  @override
  _SwitchControlState createState() => _SwitchControlState();
}

class _SwitchControlState extends State<SwitchControl> {

  bool _switchValue = false;
  bool _animating = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 50.0,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('This demo also shows Cupertino Activity Indicator',
                 style: TextStyle(color: CupertinoColors.darkBackgroundGray,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),),
          ),
          Semantics(
            container: true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CupertinoSwitch(
                  value: _switchValue,
                  onChanged: (bool value){
                    setState(() {
                      _switchValue = value;
                      _animating = value;
                    });
                  },
                ),

                Text(
                  "${_switchValue ? "On" : "Off"}",
                  style: TextStyle(fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                ),
              ],  
            ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Visibility(
                child: CupertinoActivityIndicator(
                animating: _animating,
                radius: 30.0,
              ),
              visible: _animating,
            ),
        ],

      ),
    );
  }
}