import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'entrada.dart';
import 'botao.dart';

// ignore: must_be_immutable
class Formulario extends StatelessWidget {
  var gasolinaControle = new MoneyMaskedTextController();
  var alcoolControle = new MoneyMaskedTextController();
  var ocupado = false;
  Function formFunc;

  Formulario({
    @required this.gasolinaControle,
    @required this.alcoolControle,
    @required this.ocupado,
    @required this.formFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Entrada(
                legenda: 'Gasolina',
                controle: gasolinaControle,
              )),
          Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Entrada(
                legenda: 'Álcool',
                controle: alcoolControle,
              )),
          SizedBox(
            height: 25,
          ),
          Botao(
            ocupado: ocupado,
            inverter: false,
            func: formFunc,
            texto: 'Calcular',
          )
        ],
      ),
    );
  }
}
