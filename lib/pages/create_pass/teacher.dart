import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:datetime_picker_formfield/time_picker_formfield.dart';

class CreateTeacherPass extends StatelessWidget {
final dateFormat = DateFormat("EEEE, MMMM d, yyyy 'at' h:mma");
  @override
  Widget build(BuildContext context) {

    return new Theme(
      data: ThemeData(primaryColor: Colors.orangeAccent),
      child: new Material(
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
                    'Teacher Pass',
                    style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ),

            new Expanded(
              child: new Container(
                margin: const EdgeInsets.only(left:20.0, right: 20.0, top: 10.0),
                child: new Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  child:  new Container(
                    margin: EdgeInsets.all(10.0),
                    child: new Form(
                      child: new Column(

                        children: <Widget>[
                          new Container(
                            margin: EdgeInsets.all(5.0),
                            child: new TextFormField(
                              decoration: new InputDecoration(
                                hintText: 'Destination Teacher',
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100.0)),
                              
                              )
                            ),
                          ), 
                          new Container(
                            margin: EdgeInsets.all(5.0),
                            child: new TextFormField(
                              decoration: new InputDecoration(
                                hintText: 'Origin Teacher',
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100.0)),
                              
                              )
                            ),
                          ), 
                          new Container(
                            margin: EdgeInsets.all(5.0),
                            child: new TextFormField(
                              maxLines: 7,
                              decoration: new InputDecoration(
                                hintText: 'Reason',
                                // filled: true,
                                // fillColor: Color.fromRGBO(0, 0, 0, .1),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                              
                              )
                            ),
                          ),
                         
                          new Container(
                            margin: EdgeInsets.all(5.0),
                            child: new DateTimePickerFormField(
                              format: dateFormat,
                              enabled: true,
                              decoration: new InputDecoration(
                                hintText: 'Start Time',
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100.0)),
                              
                              )
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.all(5.0),
                            child: new DateTimePickerFormField(
                              format: dateFormat,
                              enabled: true,
                              decoration: new InputDecoration(
                                hintText: 'End Time',
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100.0)),
                              
                              )
                            )
                          )
                        ],
                      ),
                    )
                  )
                )
              )
            ),
            new Container(
              margin: EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: RaisedButton (
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                child: new Icon(
                  const IconData(0xe5c8, fontFamily: 'MaterialIcons', matchTextDirection: true),
                  color: Colors.orangeAccent,
                )
              ),
            )

          ],
        )

      )
    );
  }

}

/* new Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        margin: const EdgeInsets.only(top: 60.0, bottom: 80.0, left: 30.0, right: 30.0),
      ), */
