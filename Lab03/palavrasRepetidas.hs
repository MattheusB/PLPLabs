main = do
  nomes <- getLine
  let resposta = (formaTuplas (read nomes))
  print resposta
  
calculaQuantidade :: String -> [String] -> Int
calculaQuantidade nome [] = 0
calculaQuantidade nome (head:body) =
    if head == nome then 
        1 + calculaQuantidade nome body
    else 
        0 + calculaQuantidade nome body
 
removeElemento :: String -> [String] -> [String]
removeElemento nome [] = []
removeElemento nome lista = [p | p <- lista, p /= nome]
 
formaTuplas :: [String] -> [(String, Int)]
formaTuplas [] = []
formaTuplas (head:body) = do
    let quantidade = (calculaQuantidade head body) + 1
    let lista = removeElemento head body
    [(head, quantidade)] ++ formaTuplas lista
