import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.orangeAccent,
      child: new Container(
        margin: EdgeInsets.all(40.0),
        child: new Column(
          children: <Widget>[
            new Container(
              child: new Text(
                'Login',
                style: new TextStyle(color: Colors.white, fontSize: 70.0),
              )
            ),
            new Container(
              margin: EdgeInsets.only(top: 20.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: Column(
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.all(10.0),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),

                            decoration: InputDecoration(
                              labelText: "Username",
                              fillColor: Colors.white,
                              filled: true,
                              enabled: true,
                            ),
                          )
                        ),
                        new Container(
                          margin: EdgeInsets.all(10.0),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),

                            decoration: InputDecoration(
                              labelText: "Password",
                              fillColor: Colors.white,
                              filled: true,
                              enabled: true,
                            ),
                          )
                        ),
                        new Container(
                          child: new Text(
                            'Don\'t have an account? Sign up' ,
                            style: TextStyle(fontSize: 13.0, color: Colors.white),
                          )
                        )
                      ]
                    ),
                  ), 
                  new Container(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 20.0,
                          width: 20.0,
                          child: new IconButton(
                            icon: Icon(
                              const IconData(0xe5c8, fontFamily: 'MaterialIcons', matchTextDirection: true),
                              color: Colors.white,
                              size: 30.0,
                            ),
                          )
                        )
                      ],
                    )
                  )
                ],
              )
            )
          ],
        )
      )
    );
  }
}
