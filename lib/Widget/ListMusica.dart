import 'package:flutter/material.dart';
import 'package:reproductomusica/paginas/DetallePagina.dart';

class ListMusica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: EdgeInsets.only(left: 40, right: 20),
                    child: Column(children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Text(
                              'Loremp Ipsum',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                  fontSize: 12),
                            ),
                          ),
                          Expanded(
                            child: Row(children: [
                              Text(
                                '4.25',
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 12),
                              ),
                              IconButton(
                                  tooltip: 'Ver mas',
                                  icon: Icon(
                                    Icons.more_horiz_outlined,
                                    color: Colors.indigo[200],
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                DetallePagina()));
                                  }),
                            ]),
                          )
                        ],
                      ),
                      Divider(color: Colors.grey[300]),
                    ]));
              })),
    );
  }
}
