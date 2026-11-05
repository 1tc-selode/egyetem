module Lab where
import Data.Char

-- fontos fg-ek:
-- null, head, tail, length, sum


-- head manualisan:
hd :: [a] -> a
hd (x:) = x

-- tail manualisan: 
tl :: [a] -> [a]
tl (:xs) = xs



toUpperFirst :: String -> String
toUpperFirst "" = ""
toUpperFirst (x:xs) = toUpper x : xs

-- length manualisan
length' :: [a] -> Int
length' []     = 0
length' (x:xs) = 1 + length xs




myProduct :: Num a => [a] -> a
myProduct [] = 1
myProduct (x:xs) = x * myProduct xs



myLast :: [a] -> a
myLast [x] = x
myLast (x:xs) = myLast xs



myMinimum :: [Integer] -> Integer
myMinimum [x] = x
myMinimum [x, y] = min x y
myMinimum (x:xs) = min x (myMinimum xs)


-- ez a fg amugy letezik: (!!) 
-- pl. [1,2,3] !! 1 = 2
infixl 9 !:!
(!:!) :: [a] -> Int -> a
-- (!:!) (x:) 0 = x
-- (!:!) (x:xs) i = xs !:! (i-1)

-- vagy (szebben)
(x:) !:! 0 = x
(x:xs) !:! i = xs !:! (i-1)




myDrop :: Int -> [a] -> [a]
myDrop  [] = []
myDrop i (x:xs)
    | i <= 0 = x:xs
    | otherwise = myDrop (i-1) xs




-- "Eq a" azt jelenti, hoyg olyan tipus amire mukodik az egyenlosegvizsgalat
myElem :: Eq a => a -> [a] -> Bool
myElem  [] = False
myElem a (x:xs)
    | x == a = True
    | otherwise = myElem a xs



isAscending :: Ord a => [a] -> Bool
isAscending [] = True
isAscending [] = True
isAscending [x,y] = x < y
isAscending (x:y:xs)
    | x < y = isAscending (y:xs)
    | otherwise = False




myTake :: Int -> [a] -> [a]
myTake n 
    | n <= 0 = []
myTake  [] = []
myTake n (x:xs) = x : (myTake (n-1) xs)






myReplicate :: Int -> a -> [a]
myReplicate n  | n <= 0 = []
myReplicate n x = x : myReplicate (n-1) x




sortedMerge :: Ord a => [a] -> [a] -> [a]
sortedMerge [] x = x
sortedMerge x [] = x
sortedMerge (x:xs) (y:ys)
    | x < y = x : (sortedMerge xs (y:ys))
    | otherwise = y : (sortedMerge (x:xs) ys)