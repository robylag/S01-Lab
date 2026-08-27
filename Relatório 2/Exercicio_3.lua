function filtrarMaiores(tabela,limite)
    local resultado = {}
    for i=1,#tabela do
        if tabela[i] > limite then
            table.insert(resultado,tabela[i])
        end
    end
    return resultado
end

print("Digite a quantidade de elementos: ")
local N = tonumber(io.read())
local tabela = {}
for i=1, N do
    print("Num ".. i .. ": ")
    local aux = tonumber(io.read())
    table.insert(tabela,aux)
end
print("Digite um valor K: ")
local K = tonumber(io.read())

local res = filtrarMaiores(tabela,K)

print("Elementos maiores que "..K..": ")
for i=1,#res do
    print(res[i])
end