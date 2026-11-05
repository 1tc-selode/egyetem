module Lab where
import Data.Char -- a teljes modult importálja
import Data.Char (isUpper, isLower, toUpper, toLower) -- csak a megadott függvényeket importálja

myAbs :: Integer -> Integer

myAbs x
    | x > 0 = x
    | otherwise = -x




sign :: Integer -> Integer

sign 0 = 0
sign x
 | x > 0 = 1
 | otherwise = -1



swapUpperLower :: Char -> Char
swapUpperLower c
    | isUpper c = toLower c
    | isLower c = toUpper c
    | otherwise = c



fact :: Integer -> Integer
fact 0 = 1
fact n | n > 0 = n * fact (n-1)



sumTo :: Integer -> Integer
sumTo n
 | n <= 0 = 0
 | otherwise = n + sumTo (n-1)



sumBetween :: Integer -> Integer -> Integer

sumBetween n m
    | n <= m    = sumBetweenR n m
    | otherwise = sumBetweenR m n

sumBetweenR n m
    | n == m    = n 
    | otherwise = m + sumBetweenR n (m-1)



f1 = 1
f n = (-1) * f (n-1)


powerN :: Integer -> Integer -> Integer
powerN x 0 = 1
powerN x n = x * (powerN x (n-1))

sqr x = x^2

pwr :: Integer -> Integer -> Integer
pwr x n 
    | n == 0 = 1
    | odd n = x * pwr x (n-1)
    | otherwise = sqr(pwr x(n `div` 2))