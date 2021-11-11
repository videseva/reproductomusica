import 'package:flutter/material.dart';

import 'package:reproductomusica/Model/Musica.dart';
import 'package:reproductomusica/Widget/HeaderProfile.dart';
import 'package:reproductomusica/Widget/ListMusica.dart';

class PlayList extends StatefulWidget {
  @override
  _PlayList createState() => _PlayList();
}

class _PlayList extends State<PlayList> {
  Musica cancion = new Musica(titulo: 'Titulo', duracion: '4:24');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
              child: Column(
            children: <Widget>[
              HeaderProfile(),
              Container(
                margin:
                    EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Popular',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                          fontSize: 17),
                    ),
                    GestureDetector(
                        child: Text("Ver mas",
                            style: TextStyle(
                                fontSize: 15,
                                decoration: TextDecoration.none,
                                color: Colors.indigo[200])),
                        onTap: () {
                          // do what you need to do when "Click here" gets clicked
                        }),
                  ],
                ),
              ),
              ListMusica()
            ],
          ))),
    );
  }
}
