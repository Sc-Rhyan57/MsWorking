-- Carrega o Orion Lib
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

-- Puxa o script de elementos da API no GitHub e chama a função para adicionar os elementos
local AdicionarElementos = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sc-Rhyan57/MsWorking/refs/heads/main/teste/MsText.lua"))()
local Window = OrionLib:MakeWindow({Name = "Minha Janela com API", HidePremium = false, SaveConfig = true, ConfigFolder = "Config"})

AdicionarElementos(Window)

OrionLib:Init()
