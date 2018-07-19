
class Favoritos_Screen
    def initialize
        @abafavorito = 'tabs' 
        @abalistafilme = 
        @listafavorito = 'favorite'
        @titulofilme = 'search_title'
        @botaobusca = 'search' 
        @detalhe = 'subtitle'
        @nomefilme = 'title'
        
    end

    def filmefavoritado
        # binding.pry
        
    wait_for_element(id:@titulofilme,:timeout => 5)
    wait_for_click(id:@listafavorito,:timeout => 5)
   
    end
    def filmenalistafavorito
        wait_for_click(id:@abafavorito,:timeout => 5)
        wait_for_click(id:@nomefilme,:timeout => 5)
        wait_for_element(id:@detalhe,:timeout => 5)
        
        # wait_for_click(id:@listafavorito,:timeout => 5)
    end

    def listafilme
        
        find_element(id:@titulofilme).send_keys("Dragon Ball Z")
        wait_for_click(id:@botaobusca,:timeout => 5)
        wait_for_element(id:@titulofilme,:timeout => 5)
        wait_for_click(id:@listafavorito,:timeout => 5)
        wait_for_click(id:@abafavorito,:timeout => 5)
    end
    def filmeremovidodofavorito
        wait_for_click(id:@abafavorito,:timeout => 5)
        wait_for_click(id:@listafavorito,:timeout => 5)
        
        
    end

    def filmenaoestanofavorito
        text('LISTA FILMES').click
        wait_for_click(id:@abafavorito,:timeout => 5)

    end


end