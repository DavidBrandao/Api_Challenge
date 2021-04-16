#language:pt
@alterar_empregado
Funcionalidade: Alteração de empregado Via Api
Com um token válido
Uma requisição será realizada na API
Afim de validar o serviço de Alterar empregado

Cenário: Alterar empregado
  Quando realizar uma requisição para alterar um empregado previamente cadastrada
  Então a API irá retornar o status de sucesso na requisição
  E terá informações válidas para a alteração do empregado
