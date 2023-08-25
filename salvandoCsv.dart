/// ESSE EXEMPLO SAIU DO PUB.DEV E CONSEGUE PEGAR TODOS OS DADOS
/// AGORA PRECISO ESCREVEFR UM NOVO ARQUIVO USANDO O METODO :
///  writeAsString do dart.io
/// E AINDA FORMATANDO A SAIDA EM COLUNAS ESPECIFICAS PARA INSERIR EM UM
/// BANDO DE DADOS SQL

import 'dart:io';
import 'dart:convert';
import 'dart:async';

void main() async {
  var uri = ('C:/Users/user/Desktop/turma_9/exercicios/cnaes.csv');
  final file = File(uri);
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  try {
    await for (var line in lines) {
      print('$line: ${line.length} characters');
    }
    print('File is now closed.');
  } catch (e) {
    print('Error: $e');
  }
}
