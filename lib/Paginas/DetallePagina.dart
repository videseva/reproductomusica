import 'package:flutter/material.dart';
import 'package:reproductomusica/Model/Musica.dart';
import 'package:reproductomusica/Widget/AppbarReproductor.dart';
import 'package:reproductomusica/Widget/BarraCancion.dart';
import 'package:reproductomusica/Widget/DetalleCancion.dart';
import 'package:reproductomusica/Widget/ThumbnailMusic.dart';

class DetallePagina extends StatefulWidget {
  @override
  _DetallePagina createState() => _DetallePagina();
}

class _DetallePagina extends State<DetallePagina> {
  double _sliderDiscreteValue = 20;
  double _valorBarra = 0;
  final Titulo = 'One Last Time ';
  final Artista = 'Ariadna Grande';
  final DUracion = '4.25';

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF9FA8DA),
                  Color(0xFF757575),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight), //Gradient
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              AppbarReproductor(),
              Container(
                margin: EdgeInsets.only(top: 120),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(62),
                      topRight: Radius.circular(62),
                    )),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(children: <Widget>[
                  ThumbnailMusic(),
                  BarraCancion(valorBarra: _valorBarra, DUracion: DUracion),
                  DetalleCancion(Titulo: Titulo, Artista: Artista),
                  ControlCancion(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.volume_mute_rounded,
                          color: Colors.grey,
                        ),
                        Slider(
                          activeColor: Colors.indigo[200],
                          inactiveColor: Colors.grey[200],
                          value: _sliderDiscreteValue,
                          min: 0,
                          max: 100,
                          label: _sliderDiscreteValue.round().toString(),
                          onChanged: (value) {
                            //  setState(() {
                            //  _sliderDiscreteValue = value;
                            // });
                          },
                        ),
                        Icon(
                          Icons.volume_up,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container ControlCancion() {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
              padding: EdgeInsets.only(left: 20),
              icon: Icon(
                Icons.skip_previous,
                color: Colors.indigo[200],
                size: 30,
              ),
              onPressed: () {}),
          OutlinedButton(
            onPressed: () {},
            child: Icon(
              Icons.play_arrow,
              color: Colors.indigo[200],
              size: 34,
            ),
            style: OutlinedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(24),
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.skip_next,
                color: Colors.indigo[200],
                size: 30,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
