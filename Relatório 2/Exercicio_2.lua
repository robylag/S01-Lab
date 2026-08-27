print("Digite a quantidade de elementos: ")
local N = tonumber(io.read())
local tabela = {}
for i=1, N do
    print("Num ".. i .. ": ")
    local aux = tonumber(io.read())
    table.insert(tabela,aux)
end
print("Digite um valor X a ser buscado: ")
local X = tonumber(io.read())

local contador = 0
for i=1,#tabela do
    if tabela[i] == X then
        contador = contador + 1
    end
end
print("O numero "..X.." aparece "..contador.." vezes na tabela.")