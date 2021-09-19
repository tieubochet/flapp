import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name = "no name";
  @override
  Widget MSPSau = new Container(
      child: new Container(
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.star),
          onPressed: () {
            setState(() {
              name = "YourOwnCodes.com";
            });
          },
        ),

        GestureDetector(
          child: new Text("Gesture"),
          onTap: () {
            setState(() {
              name = "Text by GestureDetector";
            });
          },
        ),

        InkWell(
          child: Container(
            child: Text("InkWell"),
          ),
          onTap: changeName,
        )
      ],
    ),
      ),
    );
  }

  void changeName() {
    setState(() {
      name = "Your own codes";
    });
  }
}