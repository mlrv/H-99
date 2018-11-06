{- 
  Drop every N'th element from a list.

  dropEvery "abcdefghik" 3 -> "abdeghk"
-}

import Data.List
import Data.Maybe

dropEvery :: (Eq a) => [a] -> Int -> [a]

dropEvery [] _ = []
dropEvery xs n 
  | n <= 0    = error "n must be greater than 0"
  | otherwise = filter indexIsNotNth xs
  where indexIsNotNth = \x -> ((fromJust (elemIndex x xs) + 1)) `mod` n /= 0
