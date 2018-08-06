
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import '../models/teacher.dart';


class SearchTeacher extends StatefulWidget {

  @override
  SearchTeacherState createState() => new SearchTeacherState();

}

class SearchTeacherState extends State<SearchTeacher> {
    Iterable<TeacherModel> teachers;
    String name_query = null;

    @override
    void initState() {
      // TODO: implement initState
      super.initState();
      getData();
    }

    Future<String> getData() async {
      String url = "http://127.0.0.1:8000/api/teachers/";

      if (name_query != null) {
        url += "?name=" + name_query;
      }
       
      var response = await http.get(
        Uri.encodeFull(url),
        headers: {
          "Accept": "application/json"
        }
      );
      
      this.setState(() {
        List raw = json.decode(response.body);
        teachers = (raw).map((i) => new TeacherModel.fromJson(i));
      });
  }


  Widget build(BuildContext context) {
    return new Material (
      color: Colors.orangeAccent,
      child: new Container(
        margin: EdgeInsets.all(25.0),
        child: new Column(

          children: <Widget>[
            new Container(
              height: 40.0,
              margin: EdgeInsets.only(bottom: 10.0),
              color: Colors.white,
              child: new TextField(
                onChanged: (text) {
                  if (!text.isEmpty) {
                    name_query = text;
                  } else {
                    name_query = null;
                  }
                  getData();
                },
                decoration: InputDecoration(
                  hintText: "Search",
                  contentPadding: EdgeInsets.all(10.0),
                ),
              )
            ),
            new Expanded(
              child: getTeacherList()
            )
          ],
        )
      )
    );
  } 


  Widget getTeacherList() {
    if (teachers != null && teachers.length > 0) {
      return new ListView.builder(
        itemExtent: 60.0,
        itemCount: teachers.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            shape: StadiumBorder(),
            child: new Container(
              alignment: Alignment(0.0, 0.0),
              child: Text(
                teachers.elementAt(index).name, 
                style: TextStyle(fontSize: 20.0),
              )
            )
          );
        },
        );
    } else {
      return new Text("No Teachers Found With This Query");
    }
  }
}

/* new Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        margin: const EdgeInsets.only(top: 60.0, bottom: 80.0, left: 30.0, right: 30.0),
      ), */
