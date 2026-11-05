module Gyak where

second :: (a, b) -> b
second (x,xs) = xs

swap :: (a, b) -> (b, a)
swap (x,xs) = (xs,x)

sortedMerge :: Ord a => [a] -> [a] -> [a]
sortedMerge [] ys = ys
sortedMerge xs [] = xs
sortedMerge (x:xs) (y:ys)
    | x < y = x : sortedMerge xs (y:ys)
    | otherwise = y : sortedMerge ys (x:xs)

-- [1,3,5,7] merge [2,4,6]
-- 1 : ([3,5,7] merge [2,4,6])
-- 1 : 2 : ([3,5,7] merge [4,6])


squareSum :: Num a => (a, a) -> (a, a, a)
squareSum (a,b) = (a,b,((a*a)+(b*b)))

names :: [String] -> [String] -> [String]
names [] _ = []
names _ [] = []
names (x:xs) (y:ys) = (x ++ " " ++ y) : names (xs)(ys)

doubleTriple :: [a] -> [a]
doubleTriple [x] = [x,x,x]
doubleTriple [x, y] = [x,x,y,y]
doubleTriple x = x

-- lengthOfShorter :: [a] -> [b] -> Integer
-- lengthOfShorter x y = len2 x y 0
--     where
--         len2 [] y acc = acc
--         len2 x [] acc = acc
--         len2 (x:xs) (y:ys) acc = 1 + len2 xs ys acc

lengthOfShorter :: [a] -> [b] -> Integer
lengthOfShorter [] _ = 0
lengthOfShorter _ [] = 0
lengthOfShorter (_:xs) (_:ys) = 1 + lengthOfShorter xs ys
