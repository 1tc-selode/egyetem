module Hf where

coneSurface :: Double -> Double -> Double
coneSurface r h = pi * r * (r + sqrt (h * h + r * r))


discount :: Double -> Double
discount x
    | x <= 50000 = x
    | x <= 100000 = x * 0.95
    | x <= 500000 = x * 0.9
    | otherwise = x * 0.85


geomTerm :: Double -> Double -> Int -> Double
geomTerm a q n
    | n <= 1 = a
    | otherwise = q * geomTerm a q (n - 1)


sumOfDivisors :: Integer -> Integer
sumOfDivisors n
    | n <= 0 = 0
    | otherwise = sumDivisors n n

sumDivisors :: Integer -> Integer -> Integer
sumDivisors n d
    | d == 0 = 0
    | n `mod` d == 0 = d + sumDivisors n (d - 1)
    | otherwise = sumDivisors n (d - 1)