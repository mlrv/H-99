{- 
  Find the last element of a list.
  lastElement [1, 2, 3] -> 3
  lastElement "abcdef" -> 'f'
-}

lastElement :: [a] -> a

lastElement [] = error "Empty list"
lastElement xs = last xs

lastElement' :: [a] -> a

lastElement' [] = error "Empty list"
lastElement' [x] = x
lastElement' (_:xs) = lastElement' xs 

lastElement'' :: [a] -> a

lastElement'' [] = error "Empty list"
lastElement'' xs = head $ reverse xs