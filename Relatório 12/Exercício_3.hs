data Esboco = Esboco{
    titulo :: String,
    tecnica :: String,
    horas :: Int
}

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "O caderno está vazio."
esbocoMaisRecente (e:_) = "Título: " ++ titulo e ++ ", Técnica: " ++ tecnica e

contarEsbocos :: [Esboco] -> Int
contarEsbocos [] = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:resto) = horas e + horasDesenhando(resto)

main :: IO ()
main = do
    let caderno  = [ Esboco "Monalisa" "Pintura à óleo" 23,
                Esboco "Rabiscos" "Lápis" 2,
                Esboco "Refsheet" "Pintura à aquarela" 16
                ]

    putStrLn(esbocoMaisRecente caderno)
    putStrLn(show(contarEsbocos caderno))
    putStrLn(show(horasDesenhando caderno))

    let caderno1 = []
    putStrLn(esbocoMaisRecente caderno1)
    
    let caderno2 = Esboco "A natureza" "caneta" 12 : caderno

    putStrLn(esbocoMaisRecente caderno)
    putStrLn(esbocoMaisRecente caderno2)
    putStrLn(show(contarEsbocos caderno))
    putStrLn(show(contarEsbocos caderno2))

    -- main: Prelude.head: empty list
    -- putStrLn (titulo (head caderno1))

