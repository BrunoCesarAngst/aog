import 'package:flutter/material.dart';
import 'botao.dart';

// ignore: must_be_immutable
class Sucesso extends StatelessWidget {
  var resultado = '';
  Function redefinir;

  Sucesso({
    @required this.resultado,
    @required this.redefinir,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            resultado,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Botao(
            ocupado: false,
            func: redefinir,
            inverter: true,
            texto: 'Recalcular',
          )
        ],
      )
    );
  }
}
