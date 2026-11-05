module Hf where
import Data.Char (ord, chr)

sumSingletons :: [[Integer]] -> Integer
sumSingletons [] = 0
sumSingletons ([x]:xs) = x + sumSingletons xs
sumSingletons (_:xs) = sumSingletons xs


longKey :: [(Char, Int)]
longKey = [('h', 1), ('e', 2), ('l', 3), ('o', 4), ('w', 5), ('r', 6), ('d', 7)]


shiftChar :: Char -> [(Char, Int)] -> Char
shiftChar c [] = c
shiftChar c ((a, b):xs)
    | c == a = chr (ord c + b)
    | otherwise = shiftChar c xs


encrypt :: [(Char, Int)] -> String -> String
encrypt key [] = []
encrypt key (x:xs) = shiftChar x key : encrypt key xs