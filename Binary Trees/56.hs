{- 
  Let us call a binary tree symmetric if you can draw a vertical line through
  the root node and then the right subtree is the mirror image of the left subtree. 
  
  Write a predicate symmetric/1 to check whether a given binary tree is symmetric.

  symmetric (Branch 'x' (Branch 'x' Empty Empty) Empty) -> False
  symmetric (Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty)) -> True
-}

data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)

mirror :: Tree a -> Tree b -> Bool

mirror Empty Empty = True
mirror (Branch _ a b) (Branch _ x y) = mirror a b && mirror x y
mirror _ _ = False