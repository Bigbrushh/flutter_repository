import 'package:flutter/material.dart';
import 'package:flutter_start/column_row.dart';

class Column_row extends StatefulWidget {
  const Column_row({super.key});

  @override
  State<Column_row> createState() => _Column_rowState();
}

class _Column_rowState extends State<Column_row> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("안녕하세요"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/2,
                height: 200,
                color: Colors.blue,
              ),
              Container(
                width: MediaQuery.of(context).size.width/2,
                height: 200,
                color: Colors.red,
              ),
            ]
          )
          ]
        )
       )
    );
  }
}
