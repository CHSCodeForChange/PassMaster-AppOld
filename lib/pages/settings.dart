import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './home.dart';

class Settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.orangeAccent,
      child: new Container(
        margin: EdgeInsets.all(20.0),
        child: new Column(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              alignment: Alignment.centerLeft,
              child: new RaisedButton(
                child: Icon(
                  const IconData(0xe5c4, fontFamily: 'MaterialIcons', matchTextDirection: true),
                  color: Colors.orangeAccent,
                ),
                shape: CircleBorder(),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            
            new Expanded(
              flex: 1, 
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      'Teachers',
                      style: TextStyle(fontSize: 40.0),
                      textAlign: TextAlign.center,
                      ),
                  ],
                )
              )
            ), 
            new Expanded(
              flex: 1, 
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      'Account',
                      style: TextStyle(fontSize: 40.0),
                      textAlign: TextAlign.center,
                      ),
                  ],
                )
              )
            ),
          ]
        ),
      )
    );
  }
}

/* new Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        margin: const EdgeInsets.only(top: 60.0, bottom: 80.0, left: 30.0, right: 30.0),
      ), */