import 'package:flutter/material.dart';

class Stack_Practice extends StatefulWidget {
  const Stack_Practice({super.key});

  @override
  State<Stack_Practice> createState() => _Stack_PracticeState();
}

class _Stack_PracticeState extends State<Stack_Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.yellow,
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: 150,
            height: 200,
            margin: const EdgeInsets.only(top: 50, left: 50),
            color: Colors.blue,
          ),
          Container(
            width: 150,
            height: 200,
            margin: const EdgeInsets.only(top: 100, left: 100),
            color: Colors.green,
          ),
          Container(
            width: 150,
            height: 200,
            margin: const EdgeInsets.only(top: 150, left: 150),
            color: Colors.orange,
          ),
        ],
      ),
    )
      );
  }
}
