module FPEA_02 where

--inc :: Int -> Int

--inc i = i + 1

doubleAdd :: Int -> Int -> Int
doubleAdd n m = 2 * n + m

isZero :: Int -> Bool
-- isZero i = i == 0
isZero 0 = True
isZero n = False

ifZero :: Int -> Integer
ifZero 0 = 10
ifZero i = -10


incInt :: Int -> Int
incInt i = i + 1

incInteger :: Integer -> Integer
incInteger i = i + 1

inc :: Integral a => a -> a
inc i = i + 1


divides :: Int -> Int -> Bool
divides n m = isZero(mod m n )

divisors :: Int -> [Int]
divisors n = [i | i <- [1..n], i `divides` n]

isPrime :: Int -> Bool
-- isPrime n = length(divisors n) == 2
isPrime n = divisors n == [1,n]