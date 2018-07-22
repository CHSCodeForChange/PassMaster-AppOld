import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import './models/pass.dart';
import './display_pass.dart';


class Passes extends StatefulWidget {

  @override
  PassesState createState() => new PassesState();

}

class PassesState extends State<Passes> {

  Iterable<PassModel> passes;

  Future<String> getData() async {
    var response = await http.get(
      Uri.encodeFull("http://127.0.0.1:8000/api/passes/"),
      headers: {
        "Accept": "application/json"
      }
    );
    
    this.setState(() {
      List raw = json.decode(response.body);
      passes = (raw).map((i) => new PassModel.fromJson(i));
    });
  }

  @override
  void initState() {
    this.getData();
  }


  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.orangeAccent,
      child: new Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
            alignment: Alignment.centerLeft,
            child: new Row(
              children: <Widget>[
                new RaisedButton(
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
                new Text(
                  'Passes',
                  style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),
                )
              ],
            )
          ),
          new Expanded(
            child: new ListView.builder(
              padding: new EdgeInsets.all(8.0),
              itemExtent: 100.0,
              itemCount: passes != null ? passes.length :0,
              itemBuilder: (BuildContext context, int index) {
                
                return new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DisplayPass(passes.elementAt(index))),
                    );
                  },
                  child: new Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    child:new Container(
                      padding: EdgeInsets.all(5.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            'To: ' + passes.elementAt(index).getDestination(),
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          new Text(
                            passes.elementAt(index).startTimeRequested,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    )
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

