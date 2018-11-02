{- 
  Split a list into two parts; the length of the first part is given.

  split "abcdefghik" 3 -> ("abc", "defghik")
-}

split :: [a] -> Int -> ([a], [a])

split [] _ = ([], [])
split xs n = (take n xs, drop n xs)
