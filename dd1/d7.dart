void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  int resultado = numeros.reduce((valorAtual, elemento) => valorAtual + elemento);
  print("For: ${somatorioFor(numeros)}");
  print("While: ${somatorioWhile(numeros)}");
  print("Recursão: ${somatorioRecursivo(numeros, 0)}");
  print("Lista: $resultado");
}

int somatorioFor(List<int> numeros) {
  int total = 0;
  for (int i = 0; i < numeros.length; i++) {
    total += numeros[i];
  }
  return total;
}

int somatorioWhile(List<int> numeros) {
  int i = 0;
  int total = 0;
  while(i < numeros.length) {
    total += numeros[i];
    i++;
  }
  return total;
}

int somatorioRecursivo(List<int> numeros, int indice) {
  if (indice == numeros.length) {
    return 0;
  } else {
    return numeros[indice] + somatorioRecursivo(numeros, indice + 1);
  }
}

// Finalizado em 11:57,64