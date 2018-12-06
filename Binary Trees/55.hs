{- 
  Construct a completely balanced binary tree.
  In a completely balanced binary tree, the following property holds for every node:
  The number of nodes in its left subtree and the number of nodes in its right subtree
  are almost equal, which means their difference is not greater than one.

  Write a function complBalTree to construct completely balanced binary
  trees for a given number of nodes.
-}

data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)

complBalTree :: Int -> [Tree Char]

complBalTree 0 = [Empty]
complBalTree n = let (q, r) = (n - 1) `quotRem` 2
  in [Branch 'x' left right | i <- [q..(q + r)],
                              left <-  complBalTree i,
                              right <- complBalTree (n - i - 1)]