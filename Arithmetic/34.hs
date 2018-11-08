{- 
  Calculate Euler's totient function phi(m).
  Euler's so-called totient function phi(m) is defined as the number 
  of positive integers r (1 <= r < m) that are coprime to m.
  
  totient 10 -> 4
-}

totient :: Int -> Int

totient x = length smallerCoprimes
  where smallerCoprimes = filter id $ map (coprime x) [1..(x-1)] 

coprime :: Int -> Int -> Bool

coprime x y = gcd' x y == 1

gcd' :: Int -> Int -> Int

gcd' x y = maximum divisors
  where divisors = [n | n <- [1..smallest], x `mod` n == 0, y `mod` n == 0]
        smallest = min x y

