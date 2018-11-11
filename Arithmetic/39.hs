{- 
  Given a range of integers by its lower and upper limit, construct a list of all prime numbers in that range.
  
  primeRange 10 20 -> [11,13,17,19]
-}

primeRange :: Int -> Int -> [Int]

primeRange a b
  | a < 0 || b < 0 = error "a and b must be positive integers"
  | a > b          = error "b must be greater or equal than a" 
  | otherwise      = filter isPrime [a..b]

isPrime :: Int -> Bool

isPrime x
  | x <= 0    = False
  | otherwise = not $ any hasDivisors [2..(x -1)]
  where hasDivisors = \n -> x `mod` n == 0

