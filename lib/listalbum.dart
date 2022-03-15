import 'package:flutter/material.dart';

import 'top_album.dart';
import 'package:flutter/material.dart';
import 'listsong.dart';

class ListAlbum extends StatelessWidget {
  const ListAlbum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spotify'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index){
        final TopAlbum albumName = topAlbumList[index];
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ListLagu(albumName: albumName.albumName, imageUrls: albumName.imageUrls);
            }));
          },
          child: Card(
            child: Image.network(albumName.imageUrls,),
          ),
        );
      },
      itemCount: topAlbumList.length,
      ),
    );
  }
}
