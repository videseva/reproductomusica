import 'package:flutter/material.dart';

class DetalleCancion extends StatelessWidget {
  const DetalleCancion({
    Key? key,
    required this.Titulo,
    required this.Artista,
  }) : super(key: key);

  final String Titulo;
  final String Artista;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$Titulo',
            style: TextStyle(color: Colors.grey, fontSize: 22),
          ),
          Text(
            '$Artista',
            style: TextStyle(
              color: Colors.indigo[200],
              fontSize: 12,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
