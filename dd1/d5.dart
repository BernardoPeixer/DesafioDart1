import 'dart:math';

void main() {

  Random random = Random();

  List<String> nomes = ["Ana", "Francisco","Joao",
  "Pedro", "Gabriel", "Rafaela",
  "Marcio", "Jose", "Carlos",
  "Patricia", "Helena", "Camila",
  "Mateus", "Gabriel", "Maria",
  "Samuel", "Karina","Antonio",
  "Daniel", "Joel", "Cristiana",
  "Sebastião", "Paula"];

  List<String> sobrenomes = ["Silva", "Ferreira", "Almeida",
  "Azevedo", "Braga", "Barros",
  "Campos", "Cardoso", "Teixeira",
  "Costa", "Santos", "Rodrigues",
  "Souza", "Alves", "Pereira",
  "Lima", "Gomes", "Ribeiro",
   "Carvalho", "Lopes", "Barbosa"];

  int indiceAleatorioNomes = random.nextInt(nomes.length);
  int indiceAleatorioSobrenomes = random.nextInt(sobrenomes.length);

  String nomeAleatorio = nomes[indiceAleatorioNomes];
  String sobrenomeAleatorio = sobrenomes[indiceAleatorioSobrenomes];

  print("Nome: $nomeAleatorio $sobrenomeAleatorio");
}

// Finalizado em 10:01,26



