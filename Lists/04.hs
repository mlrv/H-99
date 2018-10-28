{- 
  Find the number of elements of a list.
  findNumberOfElements [1, 3, 7, 9, 2] -> 5
  findNumberOfElements "haskell" -> 7
-}

findNumberOfElements :: [a] -> Int

findNumberOfElements [] = 0
findNumberOfElements (x:xs) = 1 + findNumberOfElements xs
