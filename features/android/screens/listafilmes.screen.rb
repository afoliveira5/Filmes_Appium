class Lista_filme_Screen
def initialize
    @paginalista = 'home_omdb'
    @titulofilme = 'search_title'
    @botaobusca = 'search' 
    @detalhe = 'subtitle'
    @nomefilme = 'title'
    @ok = 'button1'
    
end
def listarfilme
    wait_for_element(id:@paginalista,:timeout => 5)
end

def buscarfilme
    find_element(id:@titulofilme).send_keys("Dragon Ball Z")
    wait_for_click(id:@botaobusca,:timeout => 5)
end

def filmeachado
    wait_for_element(id:@titulofilme,:timeout => 5)
    wait_for_click(id:@nomefilme,:timeout => 5)
    wait_for_element(id:@detalhe,:timeout => 5)
end

def buscarfilmenaocadastrado

    find_element(id:@titulofilme).send_keys("test Z")
    wait_for_click(id:@botaobusca,:timeout => 5)

end

def botaok
    wait_for_click(id:@ok,:timeout => 5)
end

def desligarinternet
    set_network_connection(0)
end

# def ligarinternet
#     adb shell am start -n io.appium.settings/.Settings -e data on
# end

end
