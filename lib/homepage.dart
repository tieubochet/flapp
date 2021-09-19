import 'package:flutter/material.Dart';

void main() => runApp(MyApp());

// the root widget of our application
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget buildButton (IconData icon, String buttonTitle) {
      final Color tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon(icon, color: tintColor),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(buttonTitle, style: new TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,color: tintColor,),),

          )
        ],
      );
    }
    Widget fourButtonsSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row (
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildButton(Icons.home, "Home"),
          buildButton(Icons.favorite, "Yêu thích"),
          buildButton(Icons.star, "Ưu đãi"),
          buildButton(Icons.navigation, "Đã lưu"),
        ],
      ),
    );
    return new MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Image.asset('assets/images/logo.png', fit: BoxFit.scaleDown,height: 50,),
            leading: IconButton (
              onPressed: (){},
              icon: Icon(Icons.chat),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: (){},
              )
            ],

          ),
          body: new ListView (
            children: <Widget>[
              new Image.asset(
                  'assets/images/x.jpg',
                  fit: BoxFit.cover
              ),
              fourButtonsSection,
            ],
          )

      ),
    );
  }
}



