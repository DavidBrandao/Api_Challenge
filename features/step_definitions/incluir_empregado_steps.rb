#  Chamada do metodo incluir empregado e retorno da resposta para uso no passo de validação
Quando('realizar uma requisição para incluir um empregado') do
  @resposta = @empregado.incluir(@body)
end

# validação das respostas da requisição com os dados usados para incluir registros no hooks (empregado_hooks.rb)
Então('terá informações válidas para inclusão do empregado') do
  expect(@resposta.parsed_response["name"]).to eql(@nome_empregado)
  expect(@resposta.parsed_response["cpf"]).to eql(@cpf)
  expect(@resposta.parsed_response["id"]).to eql(@id)
end
