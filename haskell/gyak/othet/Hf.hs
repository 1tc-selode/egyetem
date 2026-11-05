module Hf where

signOfHead :: [Integer] -> Integer
signOfHead (x:xs)
    | x < 0 = -1
    | x > 0 = 1
    | otherwise = 0

secondLast :: [a] -> a
secondLast [x,y] = x
secondLast (x:xs) = secondLast xs

numOfOcc :: Eq a => a -> [a] -> Integer
numOfOcc e [] = 0
numOfOcc e (x:xs)
    | e == x = 1 + numOfOcc e xs
    | otherwise = numOfOcc e xs