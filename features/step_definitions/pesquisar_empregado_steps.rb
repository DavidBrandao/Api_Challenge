#  Chamada do metodo pesquisar empregado e retorno da resposta para uso no passo de validação do status da requisição
Quando('realizar uma requisição para pesquisar uma empregado previamente cadastrado') do
  @resposta = @empregado.listarEmpregado(@id)
end 

Quando('realizar uma requisição para pesquisar todos empregados previamente cadastrados') do
  @resposta = @empregado.listarTodosEmpregados
end    

Então('terá informações válidas para pesquisa do empregado') do                         
  @dados_empregado = @empregado.validar(@resposta)
  expect(@dados_empregado[:nome]).to eql(@nome_empregado)
  expect(@dados_empregado[:idade]).to eql(@idade)
  expect(@dados_empregado[:cpf]).to eql(@cpf)
  expect(@dados_empregado[:fone]).to eql(@fone)
  expect(@dados_empregado[:email]).to eql(@email)
  expect(@dados_empregado[:id]).to eql(@id)
end         
