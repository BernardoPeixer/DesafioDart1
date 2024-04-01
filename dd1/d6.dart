void main() {
  List<int> numero = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  convertNumero(numero);
}

void convertNumero(List<int> numero) {
  for(int i = 0; i < numero.length; i++) {
    print("decimal: ${numero[i]}, binario: ${numero[i].toRadixString(2)}, octal: ${numero[i].toRadixString(8)}, hexadecimal: ${numero[i].toRadixString(16)}");
  }
}

// Finalizado em 06:02,79