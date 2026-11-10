pesoMaximo :: Double
pesoMaximo = 30.0

-- Multiple declarations of ‘pesoMaximo’
-- pesoMaximo = 40.0

data Encomenda = Encomenda{
    destinatario :: String,
    peso :: Double,
    frete :: Double
}

descrever :: Encomenda -> String 
descrever e = " Encomenda de " ++ destinatario e ++ ", Peso: " ++ show(peso e) ++ ", Frete: " ++ show(frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas = filter (\n -> peso n <= pesoMaximo) encomendas

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas = sum(map frete encomendas)

main :: IO()
main = do
    let encomendas = [ Encomenda "José" 12.6 15.99
                 , Encomenda "Rodrigo" 90.3 16.90
                 , Encomenda "Anna" 30.01 49.90
                 , Encomenda "Josiane" 29.99 53.70
                 ]

    putStrLn("Todas as encomendas:")
    mapM_ putStrLn (map descrever encomendas)

    let encomendas_cabem = cabemNaVassoura encomendas
    putStrLn("Encomendas Aceitadas")
    mapM_ putStrLn(map descrever encomendas_cabem)

    putStrLn("Frete total: R$" ++ show(totalDeFretes encomendas_cabem))