class Funcionario {
  String _funcionarioId;
  String _nome;
  double _salario;

  // Construtor com parâmetros para inicializar os atributos privados
  Funcionario(this._funcionarioId, this._nome, this._salario);

  // Método para retornar a identificação do funcionário
  String getFuncionarioID() {
    return _funcionarioId;
  }

  // Método para retornar o nome do funcionário
  String getNome() {
    return _nome;
  }

  // Método para retornar o salário do funcionário
  double getSalario() {
    return _salario;
  }

  // Método para alterar o salário do funcionário
  void setSalario(double novoSalario) {
    _salario = novoSalario;
  }
}

void main() {
  // Criar uma instância da classe Funcionario
  Funcionario funcionario_novo = Funcionario("12345", "João Silva", 5000.0);

  // Mostrar as informações do funcionário
  print("Funcionário ID: ${funcionario_novo.getFuncionarioID()}");
  print("Nome: ${funcionario_novo.getNome()}");
  print("Salário: ${funcionario_novo.getSalario()}");

  // Alterar o salário do funcionário
  funcionario_novo.setSalario(6000.0);

  // Mostrar o salário alterado e outras informações do funcionário
  print("Funcionário ID: ${funcionario_novo.getFuncionarioID()}");
  print("Nome: ${funcionario_novo.getNome()}");
  print("Salário alterado: ${funcionario_novo.getSalario()}");
}
