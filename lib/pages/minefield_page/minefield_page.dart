import 'package:flutter/material.dart';
import 'package:minefield/models/campo/campo.dart';
import 'package:minefield/widgets/campo_widget/campo_widget.dart';
import 'package:minefield/widgets/resultado/resultado_widget.dart';

class MineField extends StatelessWidget {
  void _reiniciar() {
    print('Reiniciar...');
  }

  void _abrir(Campo campo) {
    print('Abrir...');
  }

  void _alternarMarcacao(Campo campo) {
    print('AlternarMarcacao...');
  }

  @override
  Widget build(BuildContext context) {
    Campo campo = Campo(linha: 0, coluna: 0);

    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: null,
          onReiniciar: _reiniciar,
        ),
        body: Container(
          child: CampoWidget(
            campo: campo,
            onAbrir: _abrir,
            onAlternarMarcacao: _alternarMarcacao,
          ),
        ),
      ),
    );
  }
}
