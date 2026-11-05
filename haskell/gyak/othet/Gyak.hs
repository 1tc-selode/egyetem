module Gyak where


isEmpty :: [a] -> Bool
isEmpty [] = True
isEmpty [_] = False
isEmpty _ = False

isSingleton :: [a] -> Bool
isSingleton [] = False
isSingleton [_] = True
isSingleton _ = False

myLast :: [a] -> a
myLast [x] = x
myLast (x:xs) = myLast xs

myLength :: [a] -> Integer
myLength [] = 0
myLength [x] = 1
myLength (x:xs) = 1 + myLength xs

myElem :: Eq a => a -> [a] -> Bool
myElem e [] = False
myElem e (x:xs)
    | e == x = True
    | otherwise = myElem e xs


isAscending :: Ord a => [a] -> Bool
isAscending [] = True 
isAscending [x] = True
isAscending (x:y:xs)
    | x <= y = isAscending (y:xs)
    | otherwise = False

mySum :: [Int] -> Int
mySum [] = 0
mySum (x:xs) = x + mySum xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse (x:xs) = myReverse xs ++ [x]

countOccurrences :: Int -> [Int] -> Int
countOccurrences a [] = 0
countOccurrences e (x:xs)
    | e == x = 1 + countOccurrences e xs
    | otherwise = countOccurrences e xs

myFilterEven :: [Int] -> [Int]
myFilterEven [] = []
myFilterEven (x:xs)
    | x `mod` 2 == 0 = x : myFilterEven xs
    | otherwise = myFilterEven xs

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
