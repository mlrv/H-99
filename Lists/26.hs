{- 
  Generate the combinations of K distinct objects chosen from the N elements of a list.
  
  combinations 3 "abcdef" -> ["abc", "abd", "abe", ...]
-}

combinations :: Int -> [a] -> [[a]]

combinations 0 _ = [[]]
combinations _ [] = []
combinations k (x:xs) = (map (x:) $ combinations (k-1) xs) ++ combinations k xs
