import 'package:flutter/material.dart';

class Img extends StatefulWidget {
  const Img({super.key});

  @override
  State<Img> createState() => _ImgState();
}

class _ImgState extends State<Img> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("이미지 앱 바입니다"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: Image.network("https://i.pinimg.com/originals/59/54/b4/5954b408c66525ad932faa693a647e3f.jpg")
      ),
    );
  }
}
