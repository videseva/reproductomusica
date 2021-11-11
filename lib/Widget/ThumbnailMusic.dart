import 'package:flutter/material.dart';

class ThumbnailMusic extends StatelessWidget {
  const ThumbnailMusic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 200,
        height: 200,
        margin: EdgeInsets.only(top: 40, bottom: 40),
        decoration: ShapeDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Images/thumbnail_ariadna.jpg'),
                fit: BoxFit.fitWidth),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20))),
      ),
    );
  }
}
