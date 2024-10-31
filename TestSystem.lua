-- Carregando Orion Lib
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

-- Carregando o sistema do GitHub
loadstring(game:HttpGet("link_do_repositorio_github"))()

-- Definindo variáveis para os elementos
local Elementos = {
    ["Elemento1"] = "https://raw.githubusercontent.com/usuario/repositorio/main/arquivo1.lua",
    ["Elemento2"] = "https://raw.githubusercontent.com/usuario/repositorio/main/arquivo2.lua"
}

-- Função para carregar os elementos
function carregarElemento(elemento)
    local sucesso, conteudo = pcall(function()
        return loadstring(game:HttpGet(Elementos[elemento]))()
    end)

    if sucesso then
        print(elemento .. " carregado com sucesso!")
    else
        warn("Erro ao carregar " .. elemento .. ": " .. conteudo)
    end
end

-- Criando uma janela (exemplo de uso da Orion Lib)
local Window = OrionLib:MakeWindow({Name = "Minha Janela", HidePremium = false, SaveConfig = true})

-- Chamando elementos após a criação da janela
carregarElemento("Elemento1")
carregarElemento("Elemento2")

-- Código adicional da janela aqu
