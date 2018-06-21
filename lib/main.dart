import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Office Hours Tracker',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Office Hours Tracker'),
      ),
      body:
      new Container(
        child:
        new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Text(
                "Office Hours Visitors",
                style: new TextStyle(fontSize:19.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
              ),
//get this from firebase!
              new DropdownButton<String>(
                onChanged: popupButtonSelected,
                value: "Child 1",
                style: new TextStyle(fontSize:18.0,
                    color: const Color(0xFF202020),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
                items: <DropdownMenuItem<String>>[
                  const DropdownMenuItem<String>(value: "Child 1",
                      child: const Text("Child 1")),
                  const DropdownMenuItem<String>(value: "Child 2",
                      child: const Text("Child 2")),
                  const DropdownMenuItem<String>(value: "Child 3",
                      child: const Text("Child 3")),
                ],
              ),

              new Image.network(
                'http://freerschool.com/gradcap.png',
                fit:BoxFit.scaleDown,
                width: 200.0,
                height: 140.0,
              ),

              new Text(
                "Logged in as:",
                style: new TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
              ),

              new RaisedButton(key:null, onPressed:buttonPressed,
                  color: const Color(0xFFe0e0e0),
                  child:
                  new Text(
                    "See All Visitors By Class",
                    style: new TextStyle(fontSize:12.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  )
              ),

              new RaisedButton(key:null, onPressed:buttonPressed,
                  color: const Color(0xFFe0e0e0),
                  child:
                  new Text(
                    "Search By Student Info/Time",
                    style: new TextStyle(fontSize:12.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  )
              ),

              new RaisedButton(key:null, onPressed:buttonPressed,
                  color: const Color(0xFFe0e0e0),
                  child:
                  new Text(
                    "Manage Your Rosters Online",
                    style: new TextStyle(fontSize:12.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  )
              ),

              new Center(
                child:
                new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        'http://freerschool.com/google.jpg',
                        fit:BoxFit.fill,
                        width: 100.0,
                        height: 100.0,
                      ),

                      new Text(
                        "Sign In With Your Google Account",
                        style: new TextStyle(fontSize:12.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      )
                    ]

                ),

              )
            ]

        ),

        padding: const EdgeInsets.fromLTRB(1.0, 10.0, 1.0, 5.0),
        alignment: Alignment.center,
      ),

    );
  }
  void buttonPressed(){}

  void popupButtonSelected(String value) {}

}