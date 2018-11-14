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

not' :: Bool -> Bool
not' True  = False
not' False = True

and', or', nor', nand', xor', impl', equ' :: Bool -> Bool -> Bool

and' True True = True
and' _ _ = False

or' False False = False
or' _ _ = True

nand' x y = not' $ and' x y

nor' x y = not' $ or' x y

xor' True False = True
xor' False True = True
xor' _ _ = False

impl' True False = False
impl' x y = True

equ' True True = True
equ' False False = True
equ' _ _ = False