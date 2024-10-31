-- Carrega o Orion Lib
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "Minha Janela", HidePremium = false, SaveConfig = true, ConfigFolder = "Config"})

-- Variável global para a janela, usada no script de elementos
getgenv().nomeWindow = Window

local Window = OrionLib:MakeWindow({Name = "Minha Janela", HidePremium = false, SaveConfig = true})
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sc-Rhyan57/MsWorking/refs/heads/main/teste/MsText.lua"))()

OrionLib:Init()
