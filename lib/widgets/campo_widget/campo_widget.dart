import 'package:flutter/material.dart';
import 'package:minefield/models/campo/campo.dart';

class CampoWidget extends StatelessWidget {
  final Campo campo;
  final void Function(Campo) onAbrir;
  final void Function(Campo) onAlternarMarcacao;

  CampoWidget({
    required this.campo,
    required this.onAbrir,
    required this.onAlternarMarcacao,
  });

  Widget _getImage() {
    int qtdMinas = campo.qtdeMinasNaVizinhanca;
    if (campo.aberto && campo.minado && campo.explodido) {
      return Image.asset('assets/images/bomba_1.jpg');
    } else if (campo.aberto && campo.minado) {
      return Image.asset('assets/images/bomba_0.jpg');
    } else if (campo.aberto && qtdMinas > 0) {
      return Image.asset('assets/images/aberto_$qtdMinas.jpg');
    } else if (campo.marcado) {
      return Image.asset('assets/images/bandeira.jpg');
    } else {
      return Image.asset('assets/images/fechado.jpg');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onAbrir(campo),
      onLongPress: () => onAlternarMarcacao(campo),
      child: _getImage(),
    );
  }
}
