import 'package:flutter/material.dart';

class AppbarReproductor extends StatelessWidget {
  const AppbarReproductor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 45,
      left: 10,
      right: 10,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back_outlined, color: Colors.white70),
                onPressed: () {}),
            Text(
              'Artista',
              style: TextStyle(color: Colors.white70, fontSize: 15),
            ),
            IconButton(
                icon: Icon(
                  Icons.info_outline,
                  color: Colors.white70,
                ),
                onPressed: () {}),
          ]),
    );
  }
}
