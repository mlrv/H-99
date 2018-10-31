{- 
  Find the Kth element of a list.
  
  findKthElement [1, 3, 7, 9, 2] 2 -> 3
  findKthElement "haskell" 5 -> 'e'
-}

findKthElement :: [a] -> Int -> a

findKthElement [] _ = error "Empty list"
findKthElement xs k
  | k <= 0 = error "k must be positive"
  | k > length xs = last xs
  | otherwise = xs !! (k - 1)


