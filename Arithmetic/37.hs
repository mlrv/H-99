{- 
  Calculate Euler's totient function (improved).

  totient' 10 -> 4
-}

import Data.List

totient' :: Int -> Int

totient' x = product [ (f - 1) * f ^ (m - 1) | (f, m) <- primeFactorsMult x ]

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
  | x <= 0    = False
  | otherwise = not $ any hasDivisors [2..(x -1)]
  where hasDivisors = \n -> x `mod` n == 0

