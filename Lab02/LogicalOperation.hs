main = do

	aux1 <- getLine
	aux2 <- getLine
	aux3 <- getLine
	aux4 <- getLine
	
	let answer = logicalOperation (read aux1) (read aux2) (read aux3) aux4
	
	print answer
	
logicalOperation :: Bool -> Bool -> Bool -> String -> Bool
logicalOperation aux1 aux2 aux3 aux4 = if aux4 == "OR" then (aux1 || aux2 || aux3) else (aux1 && aux2 && aux3)
