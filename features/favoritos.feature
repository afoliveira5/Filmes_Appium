#language:pt

Funcionalidade: Favoritos
Eu como usuario desejo favoritar um filme para visualizar
na minha aba de favoritos

# @smoke_test
Cenário: Adicionar filmes na lista de favoritos
Dado que estou na lista de filme
E realizar uma busca por titulo do filme
Quando favoritar um filme desejado
Entao vejo o filme favoritado na aba de favoritos

@smoke_test
Cenário: Remover filme na aba de favoritos
Dado que tenha um filme favoritado
Quando remover o filme desejado
Entao não devo ver o filme na aba de favoritos

