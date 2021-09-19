import 'package:flutter/material.dart';
import 'package:fapp/welcomepage.dart';

class NapTien extends StatefulWidget {
  const NapTien({Key? key}) : super(key: key);

  @override
  _NapTienState createState() => _NapTienState();
}
// hướng dẫn https://www.youtube.com/watch?v=gGuSGLepH_8
class _NapTienState extends State<NapTien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Đăng nhập')),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 140,
              ),


            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
              child: Text(
                "Welcom back!",
                style: TextStyle(fontSize: 22,),
              ),
            ),
            Text(
              "Login to continue using app",
              style: TextStyle(fontSize: 16,),
            ),
              Padding(padding: const EdgeInsets.fromLTRB(0, 45, 0, 20),
              child: TextField(
                style: TextStyle(fontSize: 18,),
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  )
                ),
              ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18,),
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => WelcomePage()));
                    },
                    child: Text("Log In",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
