import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_search_bar/flutter_search_bar.dart';

import './models/pass.dart';
import './display_pass.dart';


class Passes extends StatefulWidget {

  @override
  PassesState createState() => new PassesState();

}

class PassesState extends State<Passes> {

  Iterable<PassModel> passes;

  SearchBar searchBar;

  Future<String> getData() async {
    var response = await http.get(
      Uri.encodeFull("http://127.0.0.1:8000/pass/api/passes/?format=json"),
      headers: {
        "Accept": "application/json"
      }
    );

    print(response.body);
    
    this.setState(() {
      List raw = json.decode(response.body);
      passes = (raw).map((i) => new PassModel.fromJson(i));
    });
  }

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Passes"),
        actions: [searchBar.getSearchAction(context)]
    );
  }

  @override
  void initState() {
    this.getData();

     searchBar = new SearchBar(
      inBar: false,
      setState: setState,
      onSubmitted: print,
      buildDefaultAppBar: buildAppBar
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: searchBar.build(context),

      body: new Material(
        color: Colors.white,
        
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
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                child:new Container(
                  padding: EdgeInsets.all(5.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        'To: ' + passes.elementAt(index).getDestination(),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      new Text(
                        passes.elementAt(index).startTimeRequested,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                )
              )
            );
          },
        )
      )    
    );
  }
}


