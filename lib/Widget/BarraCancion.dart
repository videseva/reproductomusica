import 'package:flutter/material.dart';

class BarraCancion extends StatelessWidget {
  const BarraCancion({
    Key? key,
    required double valorBarra,
    required this.DUracion,
  })  : _valorBarra = valorBarra,
        super(key: key);

  final double _valorBarra;
  final String DUracion;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[
          Slider(
            value: _valorBarra,
            onChanged: (v) {},
            activeColor: Colors.grey,
            label: _valorBarra.toString(),
            inactiveColor: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '$DUracion',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  '-00:05',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
