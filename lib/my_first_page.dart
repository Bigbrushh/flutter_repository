import 'package:flutter/material.dart';

class My_first_page extends StatefulWidget {
  const My_first_page({super.key});

  @override
  State<My_first_page> createState() => _My_first_pageState();
}

class _My_first_pageState extends State<My_first_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("안녕하세요"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            ListTile(
              title: Text("Menu 1"),
            ),
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text("Drawer Header Part"))
          ],
        ),
      ),
      body: const Center(child: Text("HELLO WORLD")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("click click"),
        child: const Icon(Icons.mouse),
      ),
    );
  }
}
