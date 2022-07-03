import Data.List (sort)

-- ex1
maior4 :: Int -> Int -> Int -> Int -> Int
maior4 x y z w 
    | x >= y && x >= z && x >= w = x
    | y >= x && y >= z && y >= w = y
    | z >= x && z >= y && z >= w = z
    | w >= x && w >= y && w >= z = w
    
-- ex2
converterNotaParaMencao :: Float -> String
converterNotaParaMencao nota
    | nota >= 9.0 && nota <= 10.0 = "SS"
    | nota >= 7.0 && nota <= 8.9 = "MS"
    | nota >= 5.0 && nota <= 6.9 = "MM"
    | nota >= 3.0 && nota <= 4.9 = "MI"
    | nota >= 0.1 && nota <= 2.9 = "II"
    | nota == 0.0 = "SR"

-- ex3
isDecrescente :: [Int] -> Bool
isDecrescente [] = True
isDecrescente [x] = True
isDecrescente (x:y:xs)
    | y < x = isDecrescente (y:xs)
    | otherwise = False

-- criar função que percorre os elementos de uma lista e verifica se o elemento anterior é maior que o atual
-- pegar primeiro e ultimo elemento e definir uma lista descrescente, comparar com lista recebida, se igual, retornar True, se não, retornar False
-- pegar primeiro elemento e tamanho da lista, definir lista descrescente, comparar com lista recebida, se igual, retornar True, se não, retornar False

-- ex4
histograma :: [String] -> [(String, Int)]
histograma [] = []
histograma (x:xs) = h:s 
    where h = (x, length (filter (\y -> y == x) (x:xs)))
          s = histograma (filter (\y -> y /= x) xs)

-- ex5
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith _ [] _ = []
myZipWith _ _ [] = []
myZipWith f (a:as) (b:bs) = f a b : myZipWith f as bs

-- ex6
-- ex7	




-- main = do
    -- x <- getLine
    -- y <- getLine
    -- z <- getLine
    -- w <- getLine    
    -- let xAsInt = (read x :: Float)
    -- let yAsInt = (read y :: Int)
    -- let zAsInt = (read z :: Int)
    -- let wAsInt = (read w :: Int)
    -- print(maior4 xAsInt yAsInt zAsInt wAsInt)
    -- print(converterNotaParaMencao x)