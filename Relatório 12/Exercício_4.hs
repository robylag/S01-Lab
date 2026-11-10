data Etapa = NaFila | NoBanho | Concluido
    deriving (Show, Eq)

data Atendimento = Atendimento {
    cliente :: String,
    servico :: String,
    valor :: Double,
    etapa :: Etapa
}

descrever :: Atendimento -> String
descrever(Atendimento cliente servico _ etapa) = " Cliente: " ++ cliente ++ ", Serviço: " ++ servico ++ ",Fase da etapa: " ++ show(etapa)

concluir :: Atendimento -> Atendimento
concluir atendimento = atendimento { etapa = Concluido}

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos = sum(map valor (filter (\n -> etapa n == Concluido) atendimentos))

main :: IO()
main = do
    let atendimento_1 = Atendimento "Jose" "Guardar pertences" 120.30 NaFila
    let atendimento_2 = Atendimento "Rodrigo" "Acompanhar a casa de banho" 49.90 NaFila
    let atendimento_3 = Atendimento "Anna" "Entregar bebida" 37.10 NoBanho
    let atendimento_4 = Atendimento "Josiane" "Ajustar a temperatura do Banho" 70.00 NoBanho

    let lista_atendimentos = [atendimento_1, atendimento_2, atendimento_3, atendimento_4]

    let lista_atendimentos_1 = [concluir atendimento_1, atendimento_2, concluir atendimento_3,atendimento_4]

    mapM_ putStrLn(map descrever lista_atendimentos)
    putStrLn(show(arrecadado lista_atendimentos))

    mapM_ putStrLn(map descrever lista_atendimentos_1)
    putStrLn(show(arrecadado lista_atendimentos_1))
