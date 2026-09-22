module Lab where

secondsInLeapYear :: Integer
secondsInLeapYear = 360 * 24 * 60 * 60

double :: Integer -> Integer
double x = x * 2

isEven :: Integer -> Bool
isEven x = x `mod` 2 == 0 

--isOdd :: Integer -> Bool
--isOdd x = x not (isEven)

divides :: Integer -> Integer -> Bool
divides x y = y `mod` x == 0


triangleSides :: Integer -> Integer -> Integer -> Bool
triangleSides a b c = (a + b > c) && (a + c > b) && (b + c > a)

isLeapYear :: Integer -> Bool
isLeapYear x = (x `mod` 4 == 0  && not (x `mod` 100 == 0)) || ( x `mod` 400 == 0 )

isZero :: Integer -> Bool
isZero 0 = True
isZero _ = False

mul3 :: Int -> Int -> Int
mul3 0 _ = 0
mul3 _ 0 = 0
mul3 1 x = x
mul3 x 1 = x
mul3 2 2 = 1

nextDay :: Integer -> Integer
nextDay d = (d + 1) `mod` 7

fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact (n-1)

sumTo :: Integer -> Integer
sumTo 0 = 0
sumTo x = x + sumTo(x-1)

multiply :: Integer -> Integer -> Integer
multiply 0 _ = 0
multiply x y = y + ((x-1) * y)

--sumSquaresTo :: Integer -> Integer

--powerN :: Integer -> Integer -> Integer

fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-2) + fibonacci (n-1)


-- feladom geci majd otthon atnezem fixen

