function calcularMedia(a,b)
    return (a+b)/2
end

function encontrarMaior(a,b)
    if a>b then
        return a
    else
        return b
    end
end

function calcularDiferencaAbsoluta(a,b)
    local calc = a-b
    if calc < 0 then
        calc = calc * -1
    end
    return calc
end

function analisarNumeros(n1,n2,operacao)
    if operacao == "media" then
        print(calcularMedia(n1,n2))
    elseif operacao == "maior" then
        print(encontrarMaior(n1,n2))
    elseif operacao == "diferenca" then
        print(calcularDiferencaAbsoluta(n1,n2))
    else
        print("Operação inválida!")
    end
end

print("Digite o 1° Número: ")
local n1 = tonumber(io.read())

print("Digite o 2° Número: ")
local n2 = tonumber(io.read())

print("Digite a operação que deseja (media, maior , diferenca): ")
local op = tostring(io.read())

analisarNumeros(n1,n2,op)
