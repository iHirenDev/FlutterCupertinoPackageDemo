import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alert extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Alerts'),
      ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('This demo shows Cupertino Button examples',
                style: TextStyle(fontWeight: FontWeight.bold,
                                 fontSize: 25.0,
                                 color: Colors.deepPurple),),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoButton.filled(
              child: Text('Cupertino Action Sheet',
                     style: TextStyle(color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),),
              onPressed: (){
                showActionSheet(context);
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoButton.filled(
            child: Text('Cupertino Alert',
                         style: TextStyle(color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),),
                    onPressed: (){
                      showAlertDialog(context);
                    },
            ),
          ),
        ),
        
      ],
    ),

    );
  } 
}

void showActionSheet(BuildContext context){
  showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) => CupertinoActionSheet(
      title: const Text('CupertinoDemo'),
      message: const Text('CupertinoActionSheet'),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: const Text('Option 1'),
          onPressed: (){
            Navigator.pop(context, 'One');
          },
        ),
        CupertinoActionSheetAction(
          child: const Text('Option 2'),
          onPressed: (){
            Navigator.pop(context, 'Two');
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: const Text('Cancel'),
        isDefaultAction: true,
        onPressed: (){
          Navigator.pop(context,'Cancel');
        },
      ),
    )
  );
}

void showAlertDialog(BuildContext context){
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Cupertino Demo'),
        content: const Text('Demo Text'),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text('OK'),
            isDefaultAction: true,
            onPressed: (){
              Navigator.pop(context);
              showActionSheet(context);
            },
          )
        ],
      )
    );
}

