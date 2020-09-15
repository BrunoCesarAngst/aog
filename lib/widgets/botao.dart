import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Botao extends StatelessWidget {
  var ocupado = false;
  var inverter = false;
  var texto = '';
  Function func;

  Botao({
    @required this.ocupado,
    @required this.inverter,
    @required this.texto,
    @required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return ocupado
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: inverter
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              onPressed: func,
              child: Text(
                texto,
                style: TextStyle(
                  color:
                      inverter ? Colors.white : Theme.of(context).primaryColor,
                  fontSize: 25,
                ),
              ),
            ),
          );
  }
}
