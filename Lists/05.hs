{- 
  Reverse a list.
  
  reverseList [1, 2, 3] -> [3, 2, 1]
  reverseList "hello" -> "olleh"
-}

reverseList :: [a] -> [a]

reverseList xs = reverse xs

reverseList' :: [a] -> [a]

reverseList' [] = []
reverseList' (x:xs) = reverseList' xs ++ [x]
