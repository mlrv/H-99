{- 
  Determine the prime factors of a given positive integer.
  Construct a list containing the prime factors and their multiplicity.
  
  primeFactorsMult 315 -> [(3,2),(5,1),(7,1)]
-}

import Data.List

primeFactorsMult :: Int -> [(Int, Int)]

primeFactorsMult x = nub $ map buildPair factors
  where buildPair = \n -> (n, countElems n)
        countElems x = length $ filter (== x) factors
        factors = primeFactors x

primeFactors :: Int -> [Int]

primeFactors 1 = []
primeFactors x =  pF : (primeFactors $ x `div` pF) where
  pF = maximum [n | n <- [2..x], x `mod` n == 0, isPrime n]

isPrime :: Int -> Bool

isPrime x
  | x <= 0 = False
  | otherwise = not $ any hasDivisors [2..(x -1)]
  where hasDivisors = \n -> x `mod` n == 0

