main = do
  lista1 <- getLine
  lista2 <- getLine
  
  let resposta = uniaoListas (read lista1) (read lista2)
  print resposta

verifica :: Int -> [Int] -> Bool
verifica num [] = False
verifica num (head:body) = if head == num then True else verifica num body
 
verificaIntercessao :: [Int] -> [Int] -> [Int]
verificaIntercessao [] lista1 = []
verificaIntercessao lista2 [] = []
verificaIntercessao (head:body) lista1 = 
    if verifica head lista1 then 
        [] ++ verificaIntercessao body lista1
    else
        [head] ++ verificaIntercessao body lista1
 
uniaoListas :: [Int] -> [Int] -> [Int]
uniaoListas l1 l2 = l1 ++ verificaIntercessao l2 l1
