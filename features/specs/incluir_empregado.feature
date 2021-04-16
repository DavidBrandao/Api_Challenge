#language:pt
@incluir_empregado
Funcionalidade: Cadastro de Empregado Via Api
Com um token válido
Uma requisição será realizada na API
Afim de validar o serviço de inclusão de empregado

Cenário: Incluir Empregado
  Quando realizar uma requisição para incluir um empregado
  Então a API irá retornar o status de sucesso na requisição
  E terá informações válidas para inclusão do empregado
