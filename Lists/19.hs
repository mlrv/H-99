{- 
  Rotate a list N places to the left.
  
  rotate "abcdefgh" 3 -> "defghabc"
-}

rotate :: [a] -> Int -> [a]

rotate [] _ = []
rotate xs n
  | n < 0         = error "n must be positive"
  | n > length xs = rotate xs (n - length xs)
  | otherwise     = (drop n xs) ++ (take n xs)
