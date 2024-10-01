import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int randNumber = random.nextInt(10);
  int n = 0, tentativas = 0;

  while (n != randNumber) {
    print("\nQual o teu palpite?");
    String? input = stdin.readLineSync();
    int? n = int.parse(input!);
    tentativas += 1;
    if (n > 100) {
      break;
    } else {
      if (n < randNumber) {
        print("Demasiado baixo");
        continue;
      } else if (n > randNumber) {
        print("Demasiado alto");
        continue;
      } else {
        print("Correto");
        break;
      }
    }
  }
  print("\nTerminado em $tentativas tentativas");
}
