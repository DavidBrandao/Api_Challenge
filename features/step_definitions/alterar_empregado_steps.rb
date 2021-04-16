#  Chamada do metodo alterar empregado e retorno da resposta para uso no passo de validação do status da requisição
Quando('realizar uma requisição para alterar um empregado previamente cadastrada') do
  @resposta = @empregado.alterar(@body)
end

# validação das respostas da requisição com os dados usados para
# incluir registros no hook (empregado_hooks.rb)
Então('terá informações válidas para a alteração do empregado') do
  expect(@resposta.parsed_response["nome"]).to eql(@nome)
  expect(@resposta.parsed_response["salario"]).to eql(@salario)
end