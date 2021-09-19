import 'package:flutter/material.dart';

class Dangtin extends StatefulWidget {
  const Dangtin({Key? key}) : super(key: key);

  @override
  _DangtinState createState() => _DangtinState();
}


class _DangtinState extends State<Dangtin> {
  @override
  /*
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(20.0),
      child: new Container(
          child:
          new Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
              style: new TextStyle(fontSize: 18.0))
      ),
    );
    // Tạo icon và thêm màu sắc, font chữ
    Widget CreateButton (IconData icon, String btntitle){
      final Color btncolor = Colors.blue;
      return new Column(
        children: [
          new Icon(icon, color: btncolor),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(btntitle, style: new TextStyle(fontSize: 16.0,
                fontWeight: FontWeight.w600),),
          )
        ],
      );
    }
    Widget MainMenu = new Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          CreateButton(Icons.home,"Đăng tin"),
          CreateButton(Icons.favorite,"Định giá"),
          CreateButton(Icons.audiotrack,"ưu đãi"),
          CreateButton(Icons.beach_access,"Nạp tiền")
        ],
      ),
    ) ;
    return MaterialApp(
      title: '',
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Flutter App"),
            actions: <Widget>[
              new IconButton(onPressed: null, icon: new Icon(Icons.list))
            ],
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset(
                  'images/anh.jpg',
                  fit: BoxFit.cover
              ),
              MainMenu,
              titleSection

            ],
          )
      ),

    );

  }

   */

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(20.0),
      child: new Container(
          child:
          new Text('Khám phá danh mục',
              style: new TextStyle(fontSize: 18.0))
      ),
    );

  Widget Tindangmoi = new Container(
    padding: const EdgeInsets.all(20.0),
    child: new Container(
        child:
        new Text('Tin Đăng Mới',
            style: new TextStyle(fontSize: 18.0))
    ),
  );

  Color tintColor = Colors.blue;
  Color tintColor2 = Colors.blue;
  Color tintColor3 = Colors.blue;
  Color tintColor4 = Colors.blue;
  bool selected = true;

  Widget build(BuildContext context) {
    Widget buildButton (IconData icon, String btntitle){
      return new Column(
        children: [
          new IconButton(
              icon: new Icon(icon, color: tintColor),
              onPressed: (){
                setState(()
                {
                  tintColor = Colors.yellow;
                    final snackBar = SnackBar(content: Text("Đã Tap vào nút Home"));
                    Scaffold.of(context).showSnackBar(snackBar); //
                });
            },
          ),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(btntitle, style: new TextStyle(fontSize: 16.0,
                fontWeight: FontWeight.w600, color: tintColor),),
          )
        ],
      );
    }
    Widget buildButton2 (IconData icon, String btntitle){
      return new Column(
        children: [
          new IconButton(
            icon: new Icon(icon, color: tintColor2),
            onPressed: (){
              setState(()
              {
                tintColor2 = Colors.red;
                final snackBar = SnackBar(content: Text("Đã Tap vào nút Yêu thích"));
                Scaffold.of(context).showSnackBar(snackBar); //
              });
            },
          ),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(btntitle, style: new TextStyle(fontSize: 16.0,
                fontWeight: FontWeight.w600, color: tintColor2),),
          )
        ],
      );
    }
    Widget buildButton3 (IconData icon, String btntitle){
      return new Column(
        children: [
          new IconButton(
            icon: new Icon(icon, color: tintColor3),
            onPressed: (){
              setState(()
              {
                tintColor3 = Colors.black;
                final snackBar = SnackBar(content: Text("Đã Tap vào nút ưu đãi"));
                Scaffold.of(context).showSnackBar(snackBar); //
              });
            },
          ),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(btntitle, style: new TextStyle(fontSize: 16.0,
                fontWeight: FontWeight.w600, color: tintColor3),),
          )
        ],
      );
    }
    Widget buildButton4 (IconData icon, String btntitle){
      return new Column(
        children: [
          new IconButton(
            icon: new Icon(icon, color: tintColor4),
            onPressed: (){
              setState(()
              {
                tintColor4 = Colors.green;
                final snackBar = SnackBar(content: Text("Đã Tap vào nút Đã lưu"));
                Scaffold.of(context).showSnackBar(snackBar); //
              });
            },
          ),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(btntitle, style: new TextStyle(fontSize: 16.0,
                fontWeight: FontWeight.w600, color: tintColor4),),
          )
        ],
      );
    }



    Widget DMSP(String img, String menuTitle){
      final Color ti = Colors.blue;
      return new Column(
        children: [
          new Image.asset(img, fit: BoxFit.cover,height:80,),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(menuTitle, style: new TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,color: ti,)),
          )
        ],
      );
    }

    Widget DMSPDau = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          DMSP('images/dm.jpg', "BĐS"),
          DMSP('images/dm.jpg', "Xe cộ"),
          DMSP('images/dm.jpg', "Điện tử"),
          DMSP('images/dm.jpg', "Việc làm"),
        ],
      )
    );
    Widget DMSPSau = new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Row (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            DMSP('images/dm.jpg', "Thú cưng"),
            DMSP('images/dm.jpg', "Tủ lạnh"),
            DMSP('images/dm.jpg', "Cây trồng"),
            DMSP('images/dm.jpg', "Gia dụng"),
          ],
        )
    );


    Widget fourButtonsSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row (
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildButton(Icons.home,"Home"),
          buildButton2(Icons.favorite,"Yêu thích"),
          buildButton3(Icons.audiotrack,"Ưu đãi"),
          buildButton4(Icons.beach_access,"Đã lưu")
        ],
      ),
    );


    return new MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Image.asset('images/logo.png', fit: BoxFit.scaleDown,height: 50,),
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
                  'images/x.jpg',
                  fit: BoxFit.cover
              ),
              fourButtonsSection,
              titleSection,
              DMSPDau,
              DMSPSau,
              Tindangmoi,
            ],

          )


      ),
    );
  }

}
