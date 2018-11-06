{- 
  Insert an element at a given position into a list.
  
  insertAt 'X' "abcd" 2 -> "aXbcd"
-}

insertAt :: a -> [a] -> Int -> [a]

insertAt x [] _ = [x]
insertAt x xs k = (take (k - 1) xs) ++ [x] ++ (drop (k - 1) xs)
