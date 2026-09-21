module Lab2 where
import Data.Char

inc :: Int -> Int -- tipusdeklaracio
inc i = i + i -- fuggvenydeklaracio


myNot0 :: Bool -> Bool
myNot0 True  = False
myNot0 False = True

myAnd1 :: Bool -> Bool -> Bool
myAnd1 True   True  = True
myAnd1 x      y     = False

-- infixr 2 |:|
(|:|) :: Bool -> Bool -> Bool
(|:|) False False  = False
(|:|) x      y     = True

xor :: Bool -> Bool -> Bool
--xor x y = x /= y
xor True True = False
xor False False  = False
xor x y = True


-- infix 1 -->
(-->) :: Bool -> Bool -> Bool
True --> x = x
_ --> _ = True



isA :: Char -> Bool
isA 'a' = True
isA 'A' = True
isA _ = False


replaceNewline :: Char -> Char
replaceNewline '\n' = ' '
replaceNewline ch = ch

isVowel :: Char -> Bool
-- isVowel ch = elem ch ['a','e','i','o','u']
isVowel 'a' = True
isVowel 'e' = True
isVowel 'i' = True
isVowel 'o' = True
isVowel 'u' = True
isVowel _ = False

oppositeDirection :: Char -> Char
oppositeDirection 'N' = 'S'
oppositeDirection 'S' = 'N'
oppositeDirection 'E' = 'W'
oppositeDirection 'W' = 'E'
oppositeDirection ch = ch