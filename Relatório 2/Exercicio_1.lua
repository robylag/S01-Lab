function gerarTabelaPotencias(inicio,fim,base)
    for i = inicio, fim do
        local calc = 1
        for j=1 , i do
            calc = calc * base
        end
        print(base .. "^" .. i .. " = " .. calc)
    end
end

print("Digite o expoente inicial: ")
local M = tonumber(io.read())

print("Digite o expoente final: ")
local N = tonumber(io.read())

print ("Digite a base: ")
local base = tonumber(io.read())

gerarTabelaPotencias(M,N,base)