{- 
  Determine the prime factors of a given positive integer. 
  
  primeFactors 315 -> [3, 3, 5, 7]
-}

primeFactors :: Int -> [Int]

primeFactors 1 = []
primeFactors x =  pF : (primeFactors $ x `div` pF) where
  pF = maximum [n | n <- [2..x], x `mod` n == 0, isPrime n]

isPrime :: Int -> Bool

isPrime x
  | x <= 0    = False
  | otherwise = not $ any hasDivisors [2..(x -1)]
  where hasDivisors = \n -> x `mod` n == 0

