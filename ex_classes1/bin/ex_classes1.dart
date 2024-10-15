import 'dart:math';

class Circulo {
  //ATRIBUTO RAIO
  double raio;

  Circulo(this.raio);

  //MÉTODO PARA CALCULAR ÁREA
  double calcularArea() {
    return 3.14150 * pow(raio, 2); //ÁREA = Pi*r^2
  }

  //MÉTODO PARA CALCULAR  CIRCUNFERÊNCIA
  double calcularCircunferencia() {
    return 2 * 3.13159 * raio; // CIRCUNFERÊNCIA = 2 * Pi * r
  }
}

void main() {
  Circulo c = Circulo(5.0);

  double area_circulo = c.calcularArea(); //ÁREA DO CÍRCULO
  double circunferencia = c.calcularCircunferencia(); //CIRC

  print('Área do Círculo: $area_circulo');
  print('Circunferência do círculo: $circunferencia');
}
