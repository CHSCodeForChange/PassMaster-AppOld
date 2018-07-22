import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './models/pass.dart';

class PassWidget {
  PassModel passModel;

  PassWidget(this.passModel);

  Widget show() {
    return 
      new Card(
        margin: const EdgeInsets.only(top: 60.0, bottom: 10.0, left: 30.0, right: 30.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: new Container(
          margin:const EdgeInsets.all(20.0),
          child: new Column(
            children: <Widget>[
              new Expanded (
                child: new Column(
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.only(bottom: 5.0),
                      child: new Text(
                        passModel.getDestination(), 
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                      ),
                    ),

                    new Padding(
                      padding: new EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: new Text(
                        passModel.startTimeRequested + ' - ' + passModel.endTimeRequested,
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey)
                      )
                    ),
                    
                    new Padding(
                      padding: new EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: new Text(
                        passModel.description,
                        style: TextStyle(fontSize: 20.0)

                      ),
                    ),
                  ],
                ),
              ),
              
              
              new Padding(
                padding: new EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: new Text(
                  'Left: ' + passModel.timeLeftOrigin,
                  style: TextStyle(fontSize: 15.0)

                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: new Text(
                  'Arrived: ' + passModel.timeArrivedDestination,
                  style: TextStyle(fontSize: 15.0)

                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: new Text(
                  'Origin Teacher: ' + passModel.originTeacher_name,
                  style: TextStyle(fontSize: 15.0)

                ),
              ),
            ],
          ),
        ),
      );
  }

}