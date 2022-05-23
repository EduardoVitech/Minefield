import 'package:flutter/material.dart';
import 'package:minefield/models/campo/campo.dart';
import 'package:minefield/models/tabuleiro/tabuleiro.dart';
import 'package:minefield/widgets/resultado/resultado_widget.dart';
import 'package:minefield/widgets/tabuleiro_widget/tabuleiro_widget.dart';

class MineField extends StatefulWidget {
  @override
  State<MineField> createState() => _MineFieldState();
}

class _MineFieldState extends State<MineField> {
  bool? _venceu;
  final Tabuleiro _tabuleiro = Tabuleiro(
    linhas: 17,
    colunas: 15,
    qtdeBombas: 3,
  );

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: _venceu,
          onReiniciar: _reiniciar,
        ),
        body: Container(
          child: TabuleiroWidget(
            tabuleiro: _tabuleiro,
            onAbrir: _abrir,
            onAlternarMarcacao: _alternarMarcacao,
          ),
        ),
      ),
    );
  }
}
