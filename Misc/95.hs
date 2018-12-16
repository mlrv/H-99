{- 
  Print non-negative integer numbers in full-words

  fullWords 175 -> one-seven-five
-}

import Data.List

digits :: Int -> [Int]

digits n
  | n < 0     = error "n must be non-negative"
  | otherwise = map (\x -> read [x] :: Int) (show n)

toFullWorld :: Int -> String

toFullWorld n = numbers !! n
  where numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]


fullWords :: Int -> String

fullWords x = concat $ intersperse "-" $ map toFullWorld $ digits x

