import 'package:flutter/material.dart';
class DinhGia extends StatefulWidget {
  const DinhGia({Key? key}) : super(key: key);

  @override
  _DinhGiaState createState() => _DinhGiaState();
}

class _DinhGiaState extends State<DinhGia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Định giá')),
      body: Center(
        child: Text('Nội dung trang định giá', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
