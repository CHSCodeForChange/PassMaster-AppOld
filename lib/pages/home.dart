import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {

  void openAddPassMenu () {
  }
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.orangeAccent,
      child: new Column(
        children: <Widget>[
          new Flexible(
            child: new Card(
              margin: const EdgeInsets.only(top: 60.0, bottom: 0.0, left: 30.0, right: 30.0),
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
                              'To: Mr. James', 
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                            ),
                          ),

                          new Padding(
                            padding: new EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: new Text(
                              'July 5, 9:25 p.m. - 11:00 p.m.',
                              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey)
                            )
                          ),
                          
                          new Padding(
                            padding: new EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: new Text(
                              'I need to work on my rotational motion lab, as I was absent last class.',
                              style: TextStyle(fontSize: 20.0)

                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    
                    new Padding(
                      padding: new EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: new Text(
                        'Left: July 5, 9:27 p.m.',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15.0)

                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: new Text(
                        'Arrived: None',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15.0)

                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: new Text(
                        'Origin Teacher: Mr. Harper',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15.0)

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ), 

          new Container(
            margin: const EdgeInsets.only(bottom: 20.0, top: 20.0),
            child: RaisedButton (
              onPressed: openAddPassMenu,              
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
              child: Text(
                '+', 
                style: new TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold, fontSize: 40.0),
              ),
            )
          )
        ],
      ),
        
      
    );
  }

}

/* new Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        margin: const EdgeInsets.only(top: 60.0, bottom: 80.0, left: 30.0, right: 30.0),
      ), */