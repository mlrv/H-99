{- 
  Goldbach's conjecture says that every positive even number greater than 2 is the sum of two prime numbers.
  Write a predicate to find the two prime numbers that sum up to a given even integer.

  goldbach 28 -> (5, 23)
-}

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

