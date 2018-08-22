import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectionCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final MaterialPageRoute route;

  SelectionCard(this.icon, this.label, this.route)

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 175.0,
      height: 150.0,
      margin: EdgeInsets.all(5.0),
      child: new GestureDetector(
        onTap: () {
            Navigator.push(
              context, 
              this.route
            );
        },
        child: new Card(
          child: new Container(
            padding: EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new Container(
                  child: Icon(this.icon, size: 50.0,)
                ),
                new Container(
                  
                  child: new Text(
                    this.label,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0)
                  )
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
