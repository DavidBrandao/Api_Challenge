# Classe utilizada para criar a comuniação com os webservices
# utilizando gem HTTParty para comunicação com API tipo REST
class Empregado
  include HTTParty

  # Metodo POST para inclusão de um empregado
  def incluir(body_incluir)
    HTTParty.post(
      "https://inm-test-api.herokuapp.com/empregado/cadastrar",    
      body: body_incluir.to_json,
      headers:{
      "Content-Type" => "application/json",
      },
    )
  end

  # Metodo GET para busca de um empregado
  def listarEmpregado(id)
    HTTParty.get(
      "https://inm-test-api.herokuapp.com/empregado/list/#{id}",
      headers:{
      "Content-Type" => "application/json",
      },
    )
  end

  # Metodo GET para busca de todos empregados
  def listarTodosEmpregados(id)
    HTTParty.get(
      "https://inm-test-api.herokuapp.com/empregado/list_all",
      headers:{
        "Content-Type" => "application/json",
      },
    )
  end
  
  # Metodo PUT para alteração de um empregado
  def alterar(id, body_alterar)
    HTTParty.put(
      "https://inm-test-api.herokuapp.com/empregado/alterar/#{id}",
      body: body_alterar.to_json,
      headers:{
      "Content-Type" => "application/json",
      },
    )
  end

  # Metodo para validação das informações, onde lê a resposta da requisição
  # remove caracteres especiais, elemina espaços em branco e mapeia os
  # dados filtrados dentro da hash @empregado
  def validar(resposta)
    @resp = resposta.body
    @resp = @resp.split(/[,:{}(\[)(\])"]/)
    @resp = @resp.reject(&:empty?)
    Kernel.puts(@resp)
    @empregado = {}
    @empregado[:data_admissão] = @resp[1]
    @empregado[:cargo] = @resp[3]
    @empregado[:comissao] = @resp[5].to_i
    @empregado[:cpf] = @resp[7].to_i
    @empregado[:nome] = @resp[9]
    @empregado[:genero] = @resp[11]
    @empregado
  end
end
