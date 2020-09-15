import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

// ignore: must_be_immutable
class Entrada extends StatelessWidget {
  var legenda = '';
  var controle = new MoneyMaskedTextController();

  Entrada({
    @required this.legenda,
    @required this.controle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 180,
          alignment: Alignment.centerRight,
          child: Text(
            legenda,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        Expanded(
          child: TextFormField(
            controller: controle,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
