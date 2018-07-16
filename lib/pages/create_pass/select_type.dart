import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:datetime_picker_formfield/time_picker_formfield.dart';
import './destination.dart';
import './teacher.dart';
import './srt.dart';

class SelectType extends StatelessWidget {
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
                    'Select Type',
                    style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ),

            
            new Expanded(
              child: new GestureDetector(
                onTap: () {
                   Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => CreateDestinationPass())
                    );
                },
                child: new Container(
                  margin: const EdgeInsets.only(left:20.0, right: 20.0, bottom: 5.0, top: 5.0),
                  child: new Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    child: new Container(
                      alignment: Alignment.center,
                      child: new Text(
                        'Destination Pass',
                        style: TextStyle(fontSize: 40.0),
                        textAlign: TextAlign.center,
                      ),
                    )
                  )
                )
              )
            ),
            new Expanded(
              child: new GestureDetector(
                onTap: () {
                   Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => CreateTeacherPass())
                    );
                },
                child: new Container(
                  margin: const EdgeInsets.only(left:20.0, right: 20.0, bottom: 5.0, top: 5.0),
                  child: new Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    child: new Container(
                      alignment: Alignment.center,
                      child: new Text(
                        'Teacher Pass',
                        style: TextStyle(fontSize: 40.0),
                        textAlign: TextAlign.center,
                      ),
                    )
                  )
                )
              )
            ),
            new Expanded(
              child: new GestureDetector(
                onTap: () {
                   Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => CreateSRTPass())
                    );
                },
                child: new Container(
                  margin: const EdgeInsets.only(left:20.0, right: 20.0, bottom: 5.0, top: 5.0),
                  child: new Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    child: new Container(
                      alignment: Alignment.center,
                      child: new Text(
                        'SRT Pass',
                        style: TextStyle(fontSize: 40.0),
                        textAlign: TextAlign.center,
                      ),
                    )
                  )
                )
              )
            ),
            

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
