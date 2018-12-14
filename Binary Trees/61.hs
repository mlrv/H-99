{- 
  A leaf is a node with no successors. Count the leaves of a binary tree.

  tree = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty)) (Branch 2 Empty Empty)
  leaves tree -> 2
-}

data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)

leaves :: Tree a -> Int

leaves Empty = 0
leaves (Branch _ Empty Empty) = 1
leaves (Branch _ left right) = leaves left + leaves right