import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 45,
        ),
        Container(
          child: Image.asset(
            "assets/images/images.png",
            height: 120,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Álcool ou Gasolina",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}