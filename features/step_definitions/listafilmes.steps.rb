Dado("que estou na tela de lista de filme") do
    @lista = Lista_filme_Screen.new
    @lista.listarfilme
  end

  Quando("realizar uma busca por titulo do filme") do
    @lista.buscarfilme
  end
  
  Entao("vejo o resultado da busca") do
    @lista.filmeachado
  end

  Quando("realizar uma busca por filme não cadastrado") do
    @lista.buscarfilmenaocadastrado
  end
  
  Entao("vejo a mensagem {string}") do |string|
    @lista.botaok
  end

  Dado("que estou sem conexão com a internet") do
    @lista = Lista_filme_Screen.new
    @lista.desligarinternet
  end
