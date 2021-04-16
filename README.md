# **Api_Challenge**

## Este é um simples projeto de automação de api's utilizando a linguagem ruby como base, os topicos abaixo irão descrever um passo a passo de pre requisitos, como preparar o setup, como rodar o código e por fim onde visualizar o relatorio.

1. Pré-requisitos
- Ao baixar este projeto, se faz necessário a instalação da linguagem ruby [Link para download!](https://rubyinstaller.org/downloads/)
- Um editor de textos da sua escolh. Recomendação: [Visual Studio Code] (https://code.visualstudio.com/)

2. Como preparar o setup
- Acessar a página onde o projeto foi clonado via terminal
- Instalar as dependências de gem's do projeto (Execute os códigos abaixo)
  - gem install bundler
  - bundle install
- Criar uma pasta vazia chamada "Reports" dentro da pasta "Api_Challenge" 
- Nesta etapa o código está pronto para ser executado

3. Como rodar o código   
O código pode ser rodado de algumas maneiras  
  - Rodar suite completa
    - Executar no terminal o comando: "cucumber" 
  - Rodar apenas cenário específico
    - Executar no terminal o comando: "cucumber -t @nome_da_tag"

4. Relatórios
  - No cucumber.yaml é possivel definir o tipo de relatorio (html ou json) bem como o seu nome e local de destino 
  - O relatório é gerado automaticamente na pasta reports ao final de toda a execução dos testes
