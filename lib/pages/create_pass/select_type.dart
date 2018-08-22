import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import './destination.dart';
import './teacher.dart';
import './srt.dart';
import './fragments/selection_card.dart';

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

            new Row(
              children: <Widget>[
                new SelectionCard(const IconData(0xe0c8, fontFamily: 'MaterialIcons'), 'Location Pass', MaterialPageRoute(builder: (context) => CreateDestinationPass())),
                new SelectionCard(const IconData(0xe7fd, fontFamily: 'MaterialIcons'), 'Teacher Pass', MaterialPageRoute(builder: (context) => CreateTeacherPass())),
              ],
            ),
            new Row(
              children: <Widget>[
                new SelectionCard(const IconData(0xe85d, fontFamily: 'MaterialIcons', matchTextDirection: true), 'SRT Pass', MaterialPageRoute(builder: (context) => CreateSRTPass())),
                new SelectionCard(const IconData(0xe924, fontFamily: 'MaterialIcons', matchTextDirection: true), 'Tardy Pass', null),
              ],
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
