import 'package:flutter/material.dart';
import 'package:flutter_start/second_view.dart';

class Navigator_page extends StatefulWidget {
  const Navigator_page({super.key});

  @override
  State<Navigator_page> createState() => _Navigator_pageState();
}

class _Navigator_pageState extends State<Navigator_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("네비게이터 화면"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(
            builder: (_) => SecondView())
          ),
          child: Container(
            padding: EdgeInsets.all(15),
            color: Colors.blue,
            child: Text("Get Started")
          ),
        ),
      ),
    );
  }
}
