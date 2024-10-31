-- Garante que a janela base está disponível
local Window = getgenv().nomeWindow
if not Window then
    error("Janela base não encontrada!")
end

-- Adiciona um botão de exemplo
Window:AddButton({
    Name = "Clique Aqui",
    Callback = function()
        print("Botão clicado!")
    end    
})

-- Adiciona um slider de exemplo
Window:AddSlider({
    Name = "Volume",
    Min = 0,
    Max = 100,
    Default = 50,
    Callback = function(value)
        print("Volume ajustado para: " .. value)
    end    
})

-- Adiciona um toggle de exemplo
Window:AddToggle({
    Name = "Ativar Modo Noturno",
    Default = false,
    Callback = function(state)
        print("Modo Noturno: " .. (state and "Ativado" or "Desativado"))
    end    
})

-- Adiciona um dropdown de exemplo
Window:AddDropdown({
    Name = "Escolha uma opção",
    Options = {"Opção 1", "Opção 2", "Opção 3"},
    Callback = function(selected)
        print("Opção selecionada: " .. selected)
    end
})
