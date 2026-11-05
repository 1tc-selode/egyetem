module Lab where
import Data.Char

szamjegyekOsszege :: Int -> Int
szamjegyekOsszege x
    | x == 0 = 0
    | otherwise = mod x 10 + szamjegyekOsszege (div x 10)


osszeg :: [Int] -> Int
osszeg [] = 0
osszeg (x:xs) = x + osszeg xs

darab :: [Int] -> Int
darab [] = 0
darab (x:xs) = 1 + darab xs

parosDarab :: [Int] -> Int
parosDarab [] = 0
parosDarab (x:xs)
    | mod x 2 == 0 = 1 + parosDarab xs
    | otherwise = parosDarab xs

pozitivOsszeg :: [Int] -> Int
pozitivOsszeg [] = 0
pozitivOsszeg (x:xs)
    | x > 0 = x + pozitivOsszeg xs
    | otherwise = pozitivOsszeg xs


maximumLista :: [Int] -> Int
maximumLista [] = 0
maximumLista [x] = x
maximumLista (x:xs)
    | x > maximumLista xs = x
    | otherwise = maximumLista xs


kozosElemek :: [Int] -> [Int] -> Int
kozosElemek [] _ = 0
kozosElemek _ [] = 0
kozosElemek (x:xs) (y:ys)
    | x == y = 1 + kozosElemek xs ys
    | otherwise = kozosElemek xs ys

parosak  :: [Int] -> [Int]
parosak  [] = []
parosak  (x:xs)
    | mod x 2 == 0 = x : parosak  xs
    | otherwise = parosak  xs



szetvalogat :: [Int] -> ([Int], [Int])
szetvalogat [] = ([], [])
szetvalogat (x:xs) = szetvalogatS x (szetvalogat xs)

szetvalogatS :: Int -> ([Int], [Int]) -> ([Int], [Int])
szetvalogatS x (p,q)
    | mod x 2 == 0 = (x:p,q)
    | otherwise = (p,x:q)

duplaz :: [Int] -> [Int]
duplaz [] = []
duplaz (x:xs) = x * 2 : duplaz xs


nagyobbak :: [Int] -> Int -> [Int]
nagyobbak [] _ = []
nagyobbak (x:xs) n
    | x > n = x : nagyobbak xs n
    | otherwise = nagyobbak xs n

ismetlodik :: [Int] -> Bool
ismetlodik [] = False
ismetlodik [x] = False
ismetlodik (x:y:xs)
    | x == y = True
    | otherwise = ismetlodik (y:xs)

csokkeno :: [Int] -> Bool
csokkeno [] = True
csokkeno [x] = True
csokkeno (x:y:xs)
    | x > y = csokkeno(y:xs)
    | otherwise = False

szomszedosKulonbseg :: [Int] -> [Int]
szomszedosKulonbseg [] = []
szomszedosKulonbseg [x] = []
szomszedosKulonbseg (x:y:xs) = x - y : szomszedosKulonbseg (y:xs)


nincsIsmetlodes :: [Int] -> Bool
nincsIsmetlodes [] = True
nincsIsmetlodes [x] = True
nincsIsmetlodes (x:y:xs)
    | nincsIsmS x (y:xs) = nincsIsmetlodes (y:xs)
    | otherwise = False

nincsIsmS :: Int -> [Int] -> Bool
nincsIsmS x [] = True
nincsIsmS x (y:xs)
    | x == y = False
    | otherwise = nincsIsmS x xs





doubleTriple :: [a] -> [a]
doubleTriple [] = []
doubleTriple [x] = [x,x,x]
doubleTriple [x,xs] = [x,x,xs,xs]
doubleTriple x = x

lengthOfShorter :: [a] -> [b] -> Integer
lengthOfShorter [] _ = 0
lengthOfShorter _ [] = 0
lengthOfShorter (x:xs) (y:ys) = 1 + lengthOfShorter xs ys

compressLetters :: String -> String
compressLetters "" = ""
compressLetters [x] = [x]
compressLetters (x:y:xs)
    | x == y  && isLower x = toUpper x : compressLetters xs 
    | otherwise = x : compressLetters (y:xs)





minMax :: [Int] -> (Int, Int)
minMax [] = (0,0)
minMax [x] = (x,x)
minMax (x:xs) = minMaxS x (minMax xs)

minMaxS :: Int -> (Int, Int) -> (Int, Int)
minMaxS x (p,q)
    | x < p = (x,q)
    | x > q = (p,x)
    | otherwise = (p,q)


parosAdatok :: [Int] -> (Int, Int)
parosAdatok [] = (0,0)
parosAdatok (x:xs)
    | mod x 2 == 0 = parosAdatokS x (parosAdatok xs)
    | otherwise = parosAdatok xs

parosAdatokS :: Int -> (Int, Int) -> (Int, Int)
parosAdatokS x (p,q) = (p+1,q+x)


osszevon :: [Int] -> [Int]
osszevon [] = []
osszevon [x] = [x]
osszevon (x:y:xs)
    | x == y = x : osszevon xs
    | otherwise = x : osszevon (y:xs)


ismetloParok :: [Int] -> Int
ismetloParok [] = 0
ismetloParok [x] = 0
ismetloParok (x:y:xs)
    | x == y = 1 + ismetloParok (y:xs)
    | otherwise = ismetloParok (y:xs)

kulonbsegek :: [Int] -> [Int]
kulonbsegek [] = []
kulonbsegek [x] = []
kulonbsegek (x:y:xs) = y - x : kulonbsegek(y:xs)

novekvoParok :: [Int] -> [Int]
novekvoParok [] = []
novekvoParok [x] = []
novekvoParok (x:y:xs)
    | x < y = x : novekvoParok (y:xs)
    | otherwise = novekvoParok (y:xs)


lokalisMaximumok :: [Int] -> [Int]
lokalisMaximumok [] = []
lokalisMaximumok [x] = []
lokalisMaximumok [x,y] = []
lokalisMaximumok (x:y:z:xs)
    | y > x && y > z = y : lokalisMaximumok(y:z:xs)
    | otherwise = lokalisMaximumok(y:z:xs)

egyedi :: [Int] -> [Int]
egyedi [] = []
egyedi (x:xs)
    | benneVan x xs = egyedi xs
    | otherwise = x : egyedi xs

benneVan :: Int -> [Int] -> Bool
benneVan _ [] = False
benneVan x (y:ys)
    | x == y = True
    | otherwise = benneVan x ys
