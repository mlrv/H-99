{- 
  Determine the greatest common divisor of two positive integer numbers.
  
  gcd' 36 63 -> 9
-}

gcd' :: Int -> Int -> Int

gcd' x y = maximum divisors
  where divisors = [n | n <- [1..smallest], x `mod` n == 0, y `mod` n == 0]
        smallest = min x y

