{- 
  Define predicates and/2, or/2, nand/2, nor/2, xor/2, impl/2 and equ/2 
  for logical equivalence.

  Write a predicate table/3 which prints the truth table of a given logical 
  expression in two variables.
  
  table (\a b -> (and' a (or' a b))) ->
    True True True
    True False True
    False True False
    False False False
-}

and' :: Bool -> Bool -> Bool
and' False _ = False
and' _ False = False
and' x y = True

or' :: Bool -> Bool -> Bool
or' True _ = True
or' _ True = True
or' x y = False

nand' :: Bool -> Bool -> Bool
nand' True True = False
nand' x y = True

nor' :: Bool -> Bool -> Bool
nor' False False = True
nor' x y = False

xor' :: Bool -> Bool -> Bool
xor' True False = True
xor' False True = True
xor' x y = False

impl' :: Bool -> Bool -> Bool
impl' True False = False
impl' x y = True

equ' :: Bool -> Bool -> Bool
equ' True True = True
equ' False False = True
equ' x y = False