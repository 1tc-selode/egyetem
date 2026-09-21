module Hf where


majorityFunction :: Bool -> Bool -> Bool -> Bool
majorityFunction True True True = True
majorityFunction True True False = True
majorityFunction True False True = True
majorityFunction False True True = True
majorityFunction _ _ _ = False

replaceMult :: Char -> Char
replaceMult 'x' = '*'
replaceMult c = c