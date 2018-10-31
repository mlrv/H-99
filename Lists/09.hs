{- 
  Pack consecutive duplicates of list elements into sublists.
  
  pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'e', 'e'] -> ["aaaa", "b", "cc", "eeee"]
-}

pack :: (Eq a) => [a] -> [[a]]

pack [] = []
pack (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)
