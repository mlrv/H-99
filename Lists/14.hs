{- 
  Duplicate the elements of a list.

  duplicate [1, 2, 3] -> [1,1,2,2,3,3]
-}

duplicate :: [a] -> [a]

duplicate [] = []
duplicate (x:xs) = x : x : duplicate xs

