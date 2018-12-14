{- 
  Collect the leaves of a binary tree in a list

  tree = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty)) (Branch 2 Empty Empty)
  collectLeaves tree -> [4, 2]
-}

data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)

collectLeaves :: Tree a -> [a]

collectLeaves Empty = []
collectLeaves (Branch x Empty Empty) = [x]
collectLeaves (Branch x left right) = collectLeaves left ++ collectLeaves right