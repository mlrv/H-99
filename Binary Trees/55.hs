{- 
  Construct a completely balanced binary tree.
  In a completely balanced binary tree, the following property holds for every node:
  The number of nodes in its left subtree and the number of nodes in its right subtree
  are almost equal, which means their difference is not greater than one.

  Write a function cbal-tree to construct completely balanced binary
  trees for a given number of nodes.
-}

data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)