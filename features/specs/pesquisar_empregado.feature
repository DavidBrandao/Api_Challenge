#language:pt
@pesquisar_empregado
Funcionalidade: Cadastro de empregado Via Api
Com um token válido
Uma requisição será realizada na API
Afim de validar o serviço de Pesquisar de empregado

Cenário: Pesquisar empregado
  Quando realizar uma requisição para pesquisar um empregado previamente cadastrado
  Então a API irá retornar o status de sucesso na requisição
  E terá informações válidas para pesquisa do empregado

Cenário: Pesquisar todos empregado
  Quando realizar uma requisição para pesquisar todos empregados previamente cadastrados
  Então a API irá retornar o status de sucesso na requisição
  E terá informações válidas para pesquisa do empregado
