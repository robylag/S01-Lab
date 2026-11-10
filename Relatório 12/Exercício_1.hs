
data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) = "- " ++ nome ++ ": R$" ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
    | intensidade >= 8 = "Forte"
    | intensidade >= 5 = "Equilibrado"
    | otherwise = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido leite (Cafe _ preco _) =
    if leite
        then preco + 2.0
        else preco

main :: IO ()
main = do
    let cafe_1 = Cafe "Expresso" 8.50 9
    let cafe_2 = Cafe "Cappuccino" 10.0 6
    let cafe_3 = Cafe "Leite" 5.0 2

    putStrLn(descrever cafe_1)
    putStrLn(forca cafe_1)

    putStrLn(descrever cafe_2)
    putStrLn(forca cafe_2)

    putStrLn(descrever cafe_3)
    putStrLn(forca cafe_3)


    print(precoDoPedido False cafe_2)
    print(precoDoPedido True cafe_2)