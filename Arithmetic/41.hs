{- 
  Given a range of integers by its lower and upper limit, print a list of all even 
  numbers and their Goldbach composition.

  goldbachList 9 20 -> [(3,7),(5,7),(3,11),(3,13),(5,13),(3,17)]
-}

goldbachList :: Int -> Int -> [(Int, Int)]

goldbachList a b = buildPairs $ filter even [a..b]
  where buildPairs (x:xs) = goldbach x : buildPairs xs
        buildPairs [] = []

goldbach :: Int -> (Int, Int)

goldbach x
  | x <= 2 || odd x = error "x must be even and greater than 2"
  | otherwise       = head $ primePairs x [n | n <- [2..x], isPrime n]
  where primePairs n xs = [(a, b) | a <- xs, b <- xs, a + b == n]

isPrime :: Int -> Bool

isPrime x
  | x <= 0    = False
  | otherwise = not $ any hasDivisors [2..(x -1)]
  where hasDivisors = \n -> x `mod` n == 0

