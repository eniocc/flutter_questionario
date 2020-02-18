import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!!';
    } else if (pontuacao < 16) {
      return 'Incrível!!!';
    } else {
      return 'Nível Jedi!!!!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          onPressed: reiniciarQuestionario,
          child: Text(
            'Reiniciar questionário?',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          textColor: Colors.white,
          color: Colors.blue,
        )
      ],
    );
  }
}
