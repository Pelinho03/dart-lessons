// Define um enum para os tipos de formas possíveis
enum ShapeType {
  Retangulo, // Representa um retângulo
  Circulo, // Representa um círculo
}

// Interface Drawable para definir que qualquer forma desenhável tem que implementar o método 'draw'
abstract class Drawable {
  void draw(); // Método abstrato para desenhar a forma
}

// Classe abstrata Shape que implementa Drawable
// Serve como base para todas as formas geométricas (como Retângulo e Círculo)
abstract class Shape implements Drawable {
  // Coordenadas da posição da forma no espaço 2D
  double x = 0, y = 0;

  // Método para definir a posição da forma
  void setPosicao(double x, double y) {
    this.x = x;
    this.y = y;
  }
}

// Mixin que adiciona funcionalidade de cor a uma forma
mixin Colorable {
  String color = ''; // Cor da forma

  // Método para definir a cor da forma
  void setColor(String color) {
    this.color = color;
  }
}

// Classe Retangulo que herda de Shape e usa o mixin Colorable
class Retangulo extends Shape with Colorable {
  // Atributos específicos do retângulo: largura e altura
  double largura, altura;

  // Construtor para inicializar a largura e altura
  Retangulo(this.largura, this.altura);

  // Implementação do método 'draw' para desenhar o retângulo
  @override
  void draw() {
    print(
        'Retângulo na posição ($x,$y) com largura $largura e altura $altura com a cor $color.');
  }
}

// Classe Circulo que herda de Shape e usa o mixin Colorable
class Circulo extends Shape with Colorable {
  // Atributo específico do círculo: raio
  double raio;

  // Construtor para inicializar o raio
  Circulo(this.raio);

  // Implementação do método 'draw' para desenhar o círculo
  @override
  void draw() {
    print('Círculo na posição ($x,$y) com raio $raio com a cor $color.');
  }
}

// Função principal onde instanciamos e usamos as formas
void main() {
  // Criamos um retângulo com largura 5 e altura 3
  Retangulo retangulo = Retangulo(5, 3);
  retangulo.setColor("azul"); // Definimos a cor do retângulo
  retangulo.setPosicao(10, 10); // Definimos a posição do retângulo
  retangulo.draw(); // Chamamos o método draw para desenhar o retângulo

  // Criamos um círculo com raio 5
  Circulo circulo = Circulo(5);
  circulo.setColor("azul"); // Definimos a cor do círculo
  circulo.setPosicao(10, 10); // Definimos a posição do círculo
  circulo.draw(); // Chamamos o método draw para desenhar o círculo
}
