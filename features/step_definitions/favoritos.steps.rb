Dado("que estou na lista de filme") do
    @lista = Lista_filme_Screen.new
    @lista.listarfilme
  end

Quando("favoritar um filme desejado") do
#  binding.pry
    @favorito = Favoritos_Screen.new
    @favorito.filmefavoritado
  end

Entao("vejo o filme favoritado na aba de favoritos") do
    @favorito.filmenalistafavorito
  end

  Dado("que tenha um filme favoritado") do
    @favorito = Favoritos_Screen.new
    @favorito.listafilme
  end
  
  Quando("remover o filme desejado") do
  @favorito.filmeremovidodofavorito
  end
  
  Entao("não devo ver o filme na aba de favoritos") do
 @favorito.filmenaoestanofavorito
  end