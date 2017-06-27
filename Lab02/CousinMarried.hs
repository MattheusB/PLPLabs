main = do
	number <- getLine
	let answer = verifyCousinMarried (read number)
	print answer

findDividers :: Int -> [Int]
findDividers aux = [ num | num <- [1 .. aux], ((mod aux num) == 0)]

verifyCousin :: Int -> Bool
verifyCousin aux = if (findDividers aux) == [1,aux] then True else False

verifyCousinMarried :: Int -> String
verifyCousinMarried aux
	| verifyCousin(nextNumber) && verifyCousin(aux) = "PRIMO CASADO!"
	| verifyCousin(aux) = "PRIMO!"
	| otherwise = "NAO PRIMO!"
	where nextNumber = aux + 2
