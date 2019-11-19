import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Button'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CupertinoButton(
              onPressed: (){},
              child: Text('Simple Cupertino Button',
                        style: TextStyle(fontSize: 20.0,
                                       fontWeight: FontWeight.bold,
                                       ),),
              ),
          ),
          
          CupertinoButton.filled(
            child: Text('Cupertino Filled Button',
                        style: TextStyle(fontSize: 20.0,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.white),),
            onPressed: (){},
          ),
         

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CupertinoButton.filled(
              child: Text('Button without radius',
                         style: TextStyle(fontSize: 20.0,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.white),),
              onPressed: (){},
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
            ),
          ),
        ],
      ),
    );
  }
}

