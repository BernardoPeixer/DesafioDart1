void main() {
  String paragrafo = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.';
  imprimirInfos(paragrafo);
}

void imprimirInfos(String paragrafo) {
  print("Parágrafo: $paragrafo");
  print("Número de palavras: ${paragrafo.length}");
  print("Número de frases: ${contarFrases(paragrafo)}");
  print("Número de vogais: ${contarVogais(paragrafo)}");
  print("Consoantes encontradas: ${encontrarConsoantes(paragrafo)}");
}

int contarVogais(String paragrafo) {
  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];

  int contadorDeVogal = 0;

  for(int i = 0; i < paragrafo.length; i++) {
    if(vogais.contains(paragrafo[i])) {
      contadorDeVogal++;
    }
  }

  return contadorDeVogal;
}

int contarFrases(String paragrafo) {
  List<String> pontuacao = ['.', '!', '?'];

  int contadorDeFrases = 0;

  for(int i = 0; i < paragrafo.length; i++) {
    if(pontuacao.contains(paragrafo[i])) {
      contadorDeFrases++;
    }
  }

  return contadorDeFrases;
}

Set<String> encontrarConsoantes(String paragrafo) {
  Set<String> consoantes = Set();
  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];

  paragrafo = paragrafo.toLowerCase();

  for(int i = 0; i < paragrafo.length; i++) {
    if (paragrafo[i].toLowerCase() != paragrafo[i].toUpperCase()) {
    if(!vogais.contains(paragrafo[i])) {
      consoantes.add(paragrafo[i]);
    }
  }
  }

  return consoantes;
}

// Finalizada em 15:57,73