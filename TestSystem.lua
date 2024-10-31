-- Carregando Orion Lib
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

-- Carregando o sistema do GitHub
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sc-Rhyan57/MsWorking/refs/heads/main/teste/"))()


local Elementos = {
    ["Elemento1"] = "https://raw.githubusercontent.com/Sc-Rhyan57/MsWorking/refs/heads/main/teste/MsText.lua"
}

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

local Window = OrionLib:MakeWindow({Name = "Minha Janela", HidePremium = false, SaveConfig = true})
carregarElemento("Elemento1")
