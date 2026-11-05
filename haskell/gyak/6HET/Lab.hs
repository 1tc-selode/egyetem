module Lab where
import Data.Char

myTake :: Int -> [a] -> [a]
myTake n xs
    | n <= 0 = []
myTake n [] = []
myTake n (x:xs) = x : myTake (n-1) xs


--Feladat: Elem n-szeri ismétlése (replicate)
myReplicate :: Int -> a -> [a]
myReplicate n e
    | n  <= 0 = []
    | otherwise = e : myReplicate (n-1) e

-- Feladat: Elem végtelen ismétlése (repeat)
myRepeat :: a -> [a]
myRepeat e = e : myRepeat e

onlyUppers :: String -> String
onlyUppers "" = ""
onlyUppers (x:xs)
    | isUpper x = x : onlyUppers xs
    | otherwise = onlyUppers xs

infixr 5 +:+
(+:+) :: [a] -> [a] -> [a]
[]  +:+ ys = ys
(x:xs) +:+ ys = x : (xs +:+ ys)

sortedMerge :: Ord a => [a] -> [a] -> [a]
sortedMerge n [] = n
sortedMerge [] m = m
sortedMerge (x:xs) (y:ys)
    | x < y     = x : sortedMerge xs (y:ys)
    | otherwise = y : sortedMerge (x:xs) ys

nthLetter :: Int -> Bool -> Char
nthLetter n True
  | n >= 0 && n <= 25 = ['A'..'Z'] !! n
nthLetter n False
  | n >= 0 && n <= 25 = ['a'..'z'] !! n






-- majd bepotolom amit vettunk
-- innentol csak en gyakorlok mert nem ertek semmit oran es inkabb haladok magamtol


--adja vissza a lista utolsó elemének kivételével az összes elemet.
myInit :: [a] -> [a]
myInit [] = []
myInit [_] = []
myInit (x:xs) = x : myInit xs

--Definiálj egy függvényt, amely visszaadja egy lista utolsó előtti elemét.
secondLast :: [a] -> [a]
secondLast [] = []
secondLast [x,xs] = [x]
secondLast (x:xs) = secondLast xs

--Definiáld a függvényt, amely a lista első elemének előjelét adja vissza:
-- pozitív szám esetén 1
-- negatív szám esetén -1
-- nulla esetén 0
signOfHead :: [Integer] -> Integer
signOfHead [] = 0
signOfHead (x:xs)
    | x < 0 = -1
    | x == 0 = 0
    | x > 0 = 1

