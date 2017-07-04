main = do
	lista <- getLine
	num <- getLine
	
	let resposta = iesimoNumero(read lista) (read num)
	print resposta
	
	
iesimoNumero :: [Int] -> Int -> Int
	
iesimoNumero lista num = (!!) lista (num-1)