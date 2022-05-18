import 'package:flutter_test/flutter_test.dart';
import 'package:minefield/models/campo/campo.dart';

main() {
  group('Teste Campo', () {
    test('Abrir campo COM explosão', () {
      Campo c = Campo(linha: 0, coluna: 0);
      c.minar();

      expect(c.abrir, throwsException);
    });

    /* test('Abrir campo SEM explosão', () {});

    test('Aicionar NÂO vizinho', () {});

    test('Aicionar vizinho', () {}); */
  });
}
