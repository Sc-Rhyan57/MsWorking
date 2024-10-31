-- Carrega o Orion Lib
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "Minha Janela", HidePremium = false, SaveConfig = true, ConfigFolder = "Config"})

-- Variável global para a janela, usada no script de elementos
getgenv().nomeWindow = Window

local Window = OrionLib:MakeWindow({Name = "Minha Janela", HidePremium = false, SaveConfig = true})
loadstring(game:HttpGet("link_do_seu_script_de_elementos_aqui"))()

OrionLib:Init()
