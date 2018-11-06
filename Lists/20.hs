{- 
  Remove the K'th element from a list.
  
  removeAt 2 "abcd" -> "acd"
-}

removeAt :: Int -> [a] -> [a]

removeAt _ [] = []
removeAt n xs
  | n < 0     = error "n must be a positive integer"
  | otherwise = take (n - 1) xs ++ drop n xs
