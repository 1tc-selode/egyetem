module Hf where

module Gyak where

mirrorP :: (Integer, Integer) -> (Integer, Integer) -> (Integer, Integer)
mirrorP (x1,y1) (x2,y2) = (2*x1-x2, 2*y1-y2)

range :: [Integer] -> [Integer]
range [] = []
range [a] = [a..]
range [a,b] = [a, b..]
range (a:b:c:_) = [a, b..c]

dupElems :: [a] -> [a]
dupElems [] = []
dupElems (x:xs) = x:x:dupElems xs

elemIds :: Eq a => a -> [a] -> [Int]
elemIds e xs = elemIdsSeged e xs 0

elemIdsSeged :: Eq a => a -> [a] -> Int -> [Int]
elemIdsSeged _ [] _ = []
elemIdsSeged e (x:xs) i
    | e == x = i : elemIdsSeged e xs (i+1)
    | otherwise = elemIdsSeged e xs (i+1)