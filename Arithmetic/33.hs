{- 
  Determine whether two positive integer numbers are coprime.
  
  coprime 35 64 -> True
-}

coprime :: Int -> Int -> Bool

coprime x y = gcd' x y == 1

gcd' :: Int -> Int -> Int

gcd' x y = maximum divisors
  where divisors = [n | n <- [1..smallest], x `mod` n == 0, y `mod` n == 0]
        smallest = min x y

