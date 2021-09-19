import 'package:flutter/material.dart';

class UuDai extends StatefulWidget {
  const UuDai({Key? key}) : super(key: key);

  @override
  _UuDaiState createState() => _UuDaiState();
}

class _UuDaiState extends State<UuDai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ưu đãi')),
      body: Center(
        child: Text('Nội dung trang ưu đãi', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
