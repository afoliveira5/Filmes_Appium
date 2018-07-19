#language:pt

Funcionalidade: Lista filmes
Eu como usuário desejo realizar uma busca por filmes

# @smoke_test
Cenário: Visualizar uma busca por filme
Dado que estou na tela de lista de filme
Quando realizar uma busca por titulo do filme
Entao vejo o resultado da busca


Cenário: Buscar filmes não cadastrado
Dado que estou na tela de lista de filme
Quando realizar uma busca por filme não cadastrado
Entao vejo a mensagem "Filme não encontrado"


Cenário: Buscar por filme sem conexão com internet
Dado que estou sem conexão com a internet
Quando realizar uma busca por titulo do filme
Entao vejo a mensagem 'Erro de Conexão com a Internet'
