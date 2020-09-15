import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:aog/widgets/formulario.dart';
import 'package:aog/widgets/logo.dart';
// import 'package:aog/widgets/entrada.dart';
// import 'package:aog/widgets/botao.dart';
import 'package:aog/widgets/sucesso.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _color = Colors.deepOrange;
  var _gasolinaControle = new MoneyMaskedTextController();
  var _alcoolControle = new MoneyMaskedTextController();
  var _completado = false;
  var _ocupado = false;
  var _mensagem = 'Utilize o álcool';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(
          milliseconds: 1200,
        ),
        color: _color,
        child: ListView(
          children: <Widget>[
            Logo(),
            _completado
              ? Sucesso(
                resultado: _mensagem,
                redefinir: redefinir,
              )
              : Formulario(
                gasolinaControle: _gasolinaControle,
                alcoolControle: _alcoolControle,
                ocupado: _ocupado,
                formFunc: calculo,
              ),
          ],
        ),
      ),
    );
  }

  Future calculo() {
    double alc =
        double.parse(_alcoolControle.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double gas =
        double.parse(_gasolinaControle.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double res = alc / gas;

    setState(() {
      _color = Colors.deepPurpleAccent;
      _completado= false;
      _ocupado = true;
    });

    return new Future.delayed(
        const Duration(seconds: 1),
        () => {
              setState(() {
                if (res >= 0.7) {
                  _mensagem = "Compensa utilizar Gasolina!";
                } else {
                  _mensagem = "Compensa utilizar Álcool!";
                }

                _ocupado = false;
                _completado = true;
              })
            });
  }
  
  redefinir() {
    setState(() {
      _color = Colors.deepPurple;
      _alcoolControle = new MoneyMaskedTextController();
      _gasolinaControle = new MoneyMaskedTextController();
      _completado = false;
      _ocupado = false;
    });
  }
}
