class OutOfStockException implements Exception {
  final String mensagem;

  OutOfStockException(this.mensagem);

  @override
  String toString() => "OutOfStockException; $mensagem";
}

class ArtigoInventario {
  final int id;
  final String nome;
  double preco = 0;
  var quantidadeStock;

  ArtigoInventario(this.id, this.nome, this.preco, this.quantidadeStock);

  ArtigoInventario.outOfStock(this.id, this.nome, this.preco)
      : quantidadeStock = 0;
  void compra(int quantidadeCompra) {
    (quantidadeCompra <= quantidadeStock)
        ? quantidadeStock -= quantidadeCompra
        : throw OutOfStockException(
            'Só existem $quantidadeStock unidadades de $nome em stock.');
  }
}

void main() {
  ArtigoInventario artigo1 = ArtigoInventario(1, "Computador", 999.99, 10);
  ArtigoInventario artigo2 =
      ArtigoInventario.outOfStock(2, "Smartphone", 499.99);
  ArtigoInventario artigo3 = ArtigoInventario(3, "Tablet", 299.99, 5);

  Map<int, ArtigoInventario> inventario = {
    artigo1.id: artigo1,
    artigo2.id: artigo2,
    artigo3.id: artigo3,
  };

  try {
    inventario[1]!.compra(3);
    print('Compra efetuada com sucesso!');
  } catch (e) {
    print(e);
  }
  try {
    inventario[2]!.compra(1);
    print('Compra efetuada com sucesso!');
  } catch (e) {
    print(e);
  }
  try {
    inventario[3]!.compra(7);
    print('Compra efetuada com sucesso!');
  } catch (e) {
    print(e);
  }
}
