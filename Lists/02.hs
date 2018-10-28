{- 
  Find the last but one element of a list.
  lastButOne [1, 2, 3] -> 2
  lastButOne "abcdef" -> 'e'
-}

lastButOne :: [a] -> a

lastButOne xs
  | length xs < 2 = error "The list must have at least two elements"
  | otherwise = xs !! (length xs - 2)

lastButOne' :: [a] -> a

lastButOne' xs
  | length xs < 2 = error "The list must have at least two elements"
  | otherwise = head $ tail $ reverse xs 
