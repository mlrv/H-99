{- 
  Run-length encoding of a list.
  Use the 'pack' function defined in the previous exercise.

  encode "aaaabccaadeeee" -> [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
-}

pack :: (Eq a) => [a] -> [[a]]

pack [] = []
pack (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)

encode :: (Eq a) => [a] -> [(Int, a)]

encode [] = []
encode xs = map (\ys -> (length ys, head ys)) (pack xs)
