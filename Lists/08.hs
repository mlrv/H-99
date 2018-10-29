{- 
  Eliminate consecutive duplicates of list elements.
  compress "aaaabccaadeeee" -> "abcade"
-}

compress :: (Eq a) => [a] -> [a]

compress [] = []
compress (x:xs) = x : compress (dropWhile (== x) xs)
