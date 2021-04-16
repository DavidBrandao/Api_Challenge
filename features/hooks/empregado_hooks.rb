# "Before" irá ser executado antes da chamada dos cenários
# Metodo before sendo utilizado para todas as features relacionadas à empregado
Before '@incluir_empregado or @alterar_empregado or @pesquisar_empregado' do |scenario|
  # criação de dados randomicos a fim de evitar teste com massa de dados viciada
  @data_admissão = Faker::Date.in_date_period
  @cargo = Faker::Movies::HarryPotter.house
  @idade = Faker::Number.number(digits: 2)
  @cpf = Faker::IDNumber.brazilian_citizen_number(formatted: true)
  @comissao = Faker::Movies::HarryPotter.spell
  @nome = Faker::Movies::HarryPotter.character
  @genero = Faker::Gender.short_binary_type
  @salario = "#{Faker::Number.number(digits: 3)},#{Faker::Number.number(digits: 2)}"

  # case realizado para quando o nome do cenário for "alterar empregado"
  #  atualizar os valores para (nome,email e idade)
  case scenario.name
  when 'Alterar Empregado'
    @nome = "Empregado Alterado"
    @salario = "123456789"
  end
  # body padrão para inclusão e alteração de um empregado 

  @body = {
    "admissao": @data_admissão,
    "cargo": @cargo,
    "comissao": @comissao,
    "cpf": @cpf,
    "departamentoId": 0,
    "nome": @nome,
    "salario": "#{@salario}",
    "sexo": @genero,
    "tipoContratacao": "clt"
  } 

  # instancia da classe empregado localizada em (services/empregado_services.rb)
  @empregado = empregado.new
  # comando para incluir um empregado a menos que o cenário seja o de incluir empregado
  @empregado.incluir(@body) unless scenario.name == 'Incluir empregado'
end

# "After" que irá ser executado após o termino de cenário, apagando registros criados
After '@incluir_empregado or @alterar_empregado or @pesquisar_empregado' do
  @empregado.excluir(@id)
end
