{- 
  Determine whether a given integer number is prime.
  
  isPrime 7 -> True
-}

isPrime :: Int -> Bool

isPrime x
  | x <= 0    = False
  | otherwise = not $ any hasDivisors [2..(x -1)]
  where hasDivisors = \n -> x `mod` n == 0