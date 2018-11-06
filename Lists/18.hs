{- 
  Extract a slice from a list.
  Given two indices, i and k, the slice is the list containing the elements
  between the i'th and k'th element of the original list (both limits included). Start counting the elements with 1.

  slice [1, 2, 3, 4, 5, 6] 2 4 -> [2, 3, 4]
-}

slice :: [a] -> Int -> Int -> [a]

slice [] _ _ = []
slice xs j k
  | j >= k    = error "the first index must be smaller than the second one"
  | otherwise = drop (j - 1) (take k xs)

