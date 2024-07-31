import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/album.dart';
import '../provider/album_provider.dart';

class Album_page extends StatefulWidget {
  const Album_page({super.key});

  @override
  State<Album_page> createState() => _Album_pageState();
}

class _Album_pageState extends State<Album_page> {

  late List<Album> albumList;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AlbumProvider>(
      create: ((context) => AlbumProvider()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("test title"),
        ),
        body: Consumer<AlbumProvider>(
          builder: (context, provider, child) {
            albumList = provider.getAlbumList();
            return ListView.builder(
                itemCount: albumList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: Text("${albumList[index].id} : ${albumList[index].title}"),
                  );
                }
            );
          },
        ),
      ),
    );
  }
}