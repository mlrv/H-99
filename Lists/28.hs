{- 
  Sort a list of lists according to length of sublists.
  
  lsort ["abc","de","fgh","de","ijkl","mn","o"] -> ["o","de","de","mn","abc","fgh","ijkl"]
-}

import Data.List

lsort :: (Ord a) => [[a]] -> [[a]]

lsort [] = []
lsort xs = sortBy subListLength xs where
  subListLength a b
    | length a > length b = GT
    | length a < length b = LT
    | length a == length b = EQ



