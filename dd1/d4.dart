
void main() {
  DateTime dataAtual = DateTime(2022, 9, 5);
  DateTime dataCalculada = somarDiasUteis(dataAtual, 18);

  String dataAtualFormatada = formatarData(dataAtual);
  String dataCalculadaFormatada = formatarData(dataCalculada);

  print('Data atual: $dataAtualFormatada');
  print('Data calculada: $dataCalculadaFormatada');
}



DateTime somarDiasUteis(DateTime data, int dias) {
  int diasUteisAdicionados = 0;
  while (diasUteisAdicionados < dias) {
    data = data.add(Duration(days: 1));
    if (data.weekday != DateTime.saturday && data.weekday != DateTime.sunday) {
      diasUteisAdicionados++;
    }
  }
  return data;
}



String formatarData(DateTime data) {
  String dia = data.day.toString().padLeft(2, '0');
  String mes = data.month.toString().padLeft(2, '0');
  String ano = data.year.toString();
  return '$dia/$mes/$ano';
}

// Finalizado em 32:41,38