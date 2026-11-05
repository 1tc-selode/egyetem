module Lab where

findValueByKey :: Eq a => a -> [(a,b)] -> b
findValueByKey k [] = error "findValueByKey: the given key was not present in the dictionary"
findValueByKey k ((key, value) : xs)
  | k == key  = value
  | otherwise = findValueByKey k xs



allOnes :: [Integer] -> Bool
allOnes [] = True
allOnes (1:xs) = allOnes xs
allOnes _ = False


numOfEmpties :: [[a]] -> Integer
numOfEmpties [] = 0
numOfEmpties ([] : xs) = numOfEmpties xs + 1
numOfEmpties (_ : xs) = numOfEmpties xs 

numOfNonEmpties :: [[a]] -> Integer
numOfNonEmpties [] = 0
numOfNonEmpties ([] : xs) = numOfNonEmpties xs
numOfNonEmpties (_ : xs) = numOfNonEmpties xs + 1

myLengthT ls = lengthHelper ls 0
  where
    lengthHelper [] acc = acc
    lengthHelper (x:xs) acc = lengthHelper xs (acc + 1)

mySum :: Num a => [a] -> a
mySum ls = mySumHelper ls 0
  where
    mySumHelper [] acc = acc
    mySumHelper (x:xs) acc = mySumHelper xs (acc + x)

myMaximum :: [Integer] -> Integer
myMaximum (x:xs) = myMaximumHelper xs x
  where
    myMaximumHelper [] acc = acc
    myMaximumHelper (x:xs) acc
      | x >= acc = myMaximumHelper xs x
      | otherwise = myMaximumHelper xs acc

fibonacci :: Integer -> Integer
fibonacci n = fibHelper n 0 1
  where
    fibHelper n f2 f1 
      | n == 0 = f2
      | n == 1 = f1
      | otherwise = fibHelper (n-1) f1 (f2+f1)