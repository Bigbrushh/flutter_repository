import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  late TabController _tabController;
  int _selectedindex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(
        () => setState(() {
          _selectedindex = _tabController.index;
        })
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("바텀 내비게이션 페이지"),
      ),
      body: _selectedindex == 0 ?
            tabContainer(context, Colors.indigo, "Friends Tab")
          : _selectedindex == 1 ? tabContainer(context, Colors.yellow, "Chat Tab")
          : tabContainer(context, Colors.blue, "Settings Tab"),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          tabs: [
            Tab(
              icon: Icon(
                  _selectedindex == 0 ? Icons.person : Icons.person_2_outlined
              ),
              text: "Friends",
            ),
            Tab(
              icon: Icon(
                  _selectedindex == 1 ? Icons.chat : Icons.chat_outlined
              ),
              text: "Chats",
            ),
            Tab(
              icon: Icon(
                  _selectedindex == 2 ? Icons.settings : Icons.settings_outlined
              ),
              text: "Settings",
            ),
          ],
        ),
      ),
    );
  }
  Widget tabContainer(BuildContext con, Color tabColor, String tabText) {
    return Container(
      width: MediaQuery
          .of(con)
          .size
          .width,
      height: MediaQuery
          .of(con)
          .size
          .height,
      color: tabColor,
      child: Center(
        child: Text(
          tabText,
          style: const TextStyle(
              color: Colors.white
          ),
        ),
      ),
    );
  }
}
