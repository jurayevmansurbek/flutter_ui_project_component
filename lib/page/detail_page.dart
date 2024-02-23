import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  static const String id = "detail_page";
  int count  = 0;

  DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Deatil Page"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(color: Colors.red, height: 250,),
            Container(color: Colors.yellow, height: 250,),
            Container(color: Colors.grey, height: 250,),
            Container(color: Colors.greenAccent, height: 250,),
            Container(color: Colors.blue, height: 250,),
            Container(color: Colors.pink, height: 250,),
            Container(color: Colors.purple, height: 250,),
          ],
        ),
      ),
    );
  }
}
