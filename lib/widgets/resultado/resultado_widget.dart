import 'package:flutter/material.dart';

class ResultadoWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool? venceu;
  final Function()? onReiniciar;

  const ResultadoWidget({
    required this.venceu,
    required this.onReiniciar,
  });

  Color _getCor() {
    if (venceu == null) {
      return Colors.yellow;
    } else if (venceu == true) {
      return Colors.green.shade300;
    } else {
      return Colors.red.shade300;
    }
  }

  IconData _getIcon() {
    if (venceu == null) {
      return Icons.sentiment_satisfied;
    } else if (venceu == true) {
      return Icons.sentiment_very_satisfied;
    } else {
      return Icons.sentiment_very_dissatisfied_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: _getCor(),
              child: IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: onReiniciar,
                icon: Icon(
                  _getIcon(),
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ),
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
