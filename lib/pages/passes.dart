import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './home.dart';

class Passes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.orangeAccent,
      child: new Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
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
            child: new ListView.builder(
              padding: new EdgeInsets.all(8.0),
              itemExtent: 100.0,
              itemBuilder: (BuildContext context, int index) {
                return new Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  child:new Container(

                  )
                );
              },
            )
          )
        ],
      )
      
    );
  }

}

/* new Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        margin: const EdgeInsets.only(top: 60.0, bottom: 80.0, left: 30.0, right: 30.0),
      ), */