local function AdicionarElementos(Window)
    print("[Minha API] API carregada com sucesso!")

    -- Adiciona um botão
    Window:AddButton({
        Name = "Clique Aqui",
        Callback = function()
            print("Botão clicado!")
        end    
    })

    -- Adiciona um slider
    Window:AddSlider({
        Name = "Volume",
        Min = 0,
        Max = 100,
        Default = 50,
        Callback = function(value)
            print("Volume ajustado para: " .. value)
        end    
    })

    -- Adiciona um toggle
    Window:AddToggle({
        Name = "Ativar Modo Noturno",
        Default = false,
        Callback = function(state)
            print("Modo Noturno: " .. (state and "Ativado" or "Desativado"))
        end    
    })

    -- Adiciona um dropdown
    Window:AddDropdown({
        Name = "Escolha uma opção",
        Options = {"Opção 1", "Opção 2", "Opção 3"},
        Callback = function(selected)
            print("Opção selecionada: " .. selected)
        end
    })
end

return AdicionarElementos
