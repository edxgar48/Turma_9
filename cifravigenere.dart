class CifraVigenere {
  String _chave;

  CifraVigenere(this._chave);

  String encrypt(String texto) {
    _chave = _chave.toLowerCase();
    String saida = "";
    for (int i = 0; i < texto.length; i++) {
      int deslocamento = (_chave.codeUnitAt(i % _chave.length) - 97) %
          26; //TESTEI --->>> MUDAR AQUI PARA 32 E COM --->>> toUpperCase() -->>> NÃO FUNCIONOU

      int criptografado = texto.codeUnitAt(i) + deslocamento;

      if (criptografado > 122) criptografado -= 26;
      saida += String.fromCharCode(criptografado);
    }
    return saida;
  }

  String decrypt(String textoCriptografado) {
    textoCriptografado = textoCriptografado.toLowerCase();
    _chave = _chave.toLowerCase();
    String saida = "";
    for (int i = 0; i < textoCriptografado.length; i++) {
      int deslocamento = (_chave.codeUnitAt(i % _chave.length) - 97) % 26;

      int descriptografado = textoCriptografado.codeUnitAt(i) - deslocamento;

      if (descriptografado < 97) descriptografado += 26;
      saida += String.fromCharCode(descriptografado);
    }
    return saida;
  }
}

void main(List<String> args) {
  CifraVigenere cifra = CifraVigenere('p');
  String texto = 'o';
  String textoCriptografado = cifra.encrypt(texto);
  print(textoCriptografado);

  String textoDescriptografado = cifra.decrypt(textoCriptografado);
  print(textoDescriptografado);

  if (texto == textoDescriptografado) {
    print('A classe CifraVigenere está funcionando corretamente');
  } else {
    print('Ocorreu um Erro na classe');
  }
}

//dapbjcsdsdadltgrphtfjtujcrxdcp --->>> SAIDA PARA p
//dtrugclaswydevzopaqfcrucekudvm --->>> SAIDA PARA pirimpimpin
//dtrugclaswxdevzopaqfcqucekudvm --->>> SAIDA PARA pirimpimpim
//ixaeyakotilzmyvtueeiyrmudwizdu --->>> SAIDA PARA uma senhaqualquer