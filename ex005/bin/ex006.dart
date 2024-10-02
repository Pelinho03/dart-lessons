import 'dart:io';
import 'dart:math';

void main() {
  var list = ['pedra', 'papel', 'tesoura'];
  final random = new Random();
  var element = list[random.nextInt(list.length)];
  int pontos_pc = 0, pontos_user = 0;

  while (true) {
    stdout.write("\nPedra papel tesoura: ");
    String? opcao = stdin.readLineSync()!.toLowerCase();

    if (opcao == element) {
      print('EMPATE');
    } else if (opcao != element) {
      if (opcao == 'pedra' && element == 'tesoura') {
        print('Ganhaste!');
        pontos_user++;
      } else if (opcao == 'papel' && element == 'pedra') {
        print('Ganhaste!');
        pontos_user++;
      } else if (opcao == 'tesoura' && element == 'papel') {
        print('Ganhaste!');
        pontos_user++;
      } else {
        print('Perdeste!');
        pontos_pc++;
      }
    }
    print("Ficou $pontos_pc - $pontos_user");
    if (pontos_pc == 3 || pontos_user == 3) {
      break;
    }
  }
}
