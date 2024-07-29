import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey,
      child: Stack(
        children: [
          Container(
            width: 300,
            height: 100,
            margin: const EdgeInsets.only(top: 300, left: 450),
            color: Colors.lightBlueAccent
          ),
          Container(
              width: 1200,
              height: 300,
              margin: const EdgeInsets.only(top: 1000, left: 0, right: 0),
              color: Colors.brown
          ),
          Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 800, left: 50),
              color: Colors.yellowAccent
          ),
        ]
        )
      )
    );
  }
}
