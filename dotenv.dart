// DotEnv é um formato de arquivo de texto muito utilizado no backend
// para armazenar valores por chave e valor, ex:
// DATABASE_URL="http://DATABASE"
// IS_ADMIN=true
// REFRESH_TIME=123454 # second
// Crie uma classe que leia um arquivo '.env' e disponibilize a leitura
// dos dados pelas chaves lembrando de prevalecer os tipos primitivos.

// REGRAS:

// - Chaves e valores são separados pelo sinal de igual (=).

// - Arquivos DotEnv geralmente tem comentários que começam com HashTag
// (#). Isso deve ser ignorado.

//import 'dart:convert';
import 'dart:io';

class DotEnv {
  final List<FileReport> files;

  DotEnv(this.files);
  //preciso fazer um tratamento de erro para esse nullable ai embaixo
  static DotEnv? byPath(String path) {
    final file = File(path);
    final contents = file.readAsLinesSync();
    //return null;
    print(contents);
  }

  int coverage() {
    return 0;
  }
}

class FileReport {
  final String sourcefile;
  final int linesFound;
  final int linesHit;

  FileReport(
      {required this.sourcefile,
      required this.linesFound,
      required this.linesHit});
}

void main() async {
  var uri = ('C:/Users/user/Desktop/turma_9/exercicios/exemplo.env');

  DotEnv.byPath(uri);
}
