import 'package:flutter/material.dart';
import 'package:reproductomusica/paginas/DetallePagina.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      ///alignment: Alignment.center,
      //textDirection: TextDirection.rtl,
      fit: StackFit.loose,
      overflow: Overflow.visible,
      clipBehavior: Clip.hardEdge,
      children: [
        Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 1.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60.0),
            ),
            image: DecorationImage(
                image: AssetImage(
                  'assets/Images/header_ariadna.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 30,
          child: Column(
            children: [
              Text(
                'Trandling',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),
              Text(
                'Ariadna ',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white70,
                    fontSize: 30),
              ),
              Text(
                ' Grande',
                style: TextStyle(color: Colors.white70, fontSize: 30),
              ),
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.all(25),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.menu, color: Colors.white70),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.info_outline,
                        color: Colors.white70,
                      ),
                      onPressed: () {}),
                ])),
        Positioned(
            bottom: -20,
            right: 20,
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetallePagina()));
              },
              color: Colors.indigo[200],
              textColor: Colors.white,
              child: Icon(
                Icons.play_arrow,
                size: 34,
              ),
              padding: EdgeInsets.all(16),
              shape: CircleBorder(),
            )),
      ],
    );
  }
}
