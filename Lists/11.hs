{- 
  Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list.
  Only elements with duplicates are transferred as (N E) lists.

  encodeModified "aaaabccaadeeee" -> [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
-}

data ListItem a = Single a | Multiple Int a deriving (Show)

pack :: (Eq a) => [a] -> [[a]]

pack [] = []
pack (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)

encodeModified :: (Eq a) => [a] -> [ListItem a]

generateListItem [x] = Single x
generateListItem xs = Multiple (length xs) (head xs) 

encodeModified [] = []
encodeModified xs = map generateListItem (pack xs)