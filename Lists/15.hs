{- 
  Replicate the elements of a list a given number of times.

  repl "abc" 3 -> "aaabbbccc"
-}

repl :: [a] -> Int -> [a]

repl [] _ = []
repl (x:xs) n = (replicate n x) ++ (repl xs n)
