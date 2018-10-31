{- 
  Decode a run-length encoded list.

  decode [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e'] -> "aaaabccaadeeee"
-}

data ListItem a = Single a | Multiple Int a deriving (Show)

unwrap :: ListItem a -> [a]

unwrap (Single x) = [x]
unwrap (Multiple n x) = replicate n x

decode :: [ListItem a] -> [a]

decode [] = []
decode (x:xs) = (unwrap x) ++ (decode xs)