{- 
  Find out whether a list is a palindrome.
  
  isPalindrome  [1, 2, 3] -> False
  isPalindrome "madamimadam" -> True
-}

isPalindrome :: (Eq a) => [a] -> Bool

isPalindrome [] = True
isPalindrome xs = xs == (reverse xs)
