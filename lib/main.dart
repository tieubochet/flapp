import 'package:fapp/uudai.dart';
import 'package:fapp/naptien.dart';
import 'package:fapp/dinhgia.dart';
import 'package:fapp/dangtin.dart';
import 'package:fapp/welcomepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/*
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
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

}
*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // hướng dẫn https://www.youtube.com/watch?v=DWsRS4Cbb3g
  int currentTab = 0;
  final List<Widget> screens = [
    NapTien(),
    UuDai(),
    DinhGia(),
    Dangtin()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dangtin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen = Dangtin();
                          currentTab = 0;
                        });
                      },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                            Icons.dashboard,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text('Đăng tin', style: TextStyle(
                          color: currentTab == 0? Colors.blue : Colors.grey,
                        ))
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = DinhGia();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text('Định giá', style: TextStyle(
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ))
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = UuDai();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.audiotrack,
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text('Ưu Đãi', style: TextStyle(
                          color: currentTab == 2? Colors.blue : Colors.grey,
                        ))
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = NapTien();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.login,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text('Đăng nhập', style: TextStyle(
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
