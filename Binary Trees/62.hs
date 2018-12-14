{- 
  An internal node of a binary tree has either one or two non-empty successors.
  Collect the internal nodes of a binary tree in a list

  tree = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty)) (Branch 2 Empty Empty)
  internals tree -> [1, 2]
-}

data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)

internals :: Tree a -> [a]

internals Empty = []
internals (Branch x Empty Empty) = []
internals (Branch x left right) = x : internals left ++ internals right