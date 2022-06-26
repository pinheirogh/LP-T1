-- ex1
maior4 :: Int -> Int -> Int -> Int -> Int
maior4 x y z w 
    | x >= y && x >= z && x >= w = x
    | y >= x && y >= z && y >= w = y
    | z >= x && z >= y && z >= w = z
    | w >= x && w >= y && w >= z = w
    
-- ex2
-- ex3
-- ex4
-- ex5
-- ex6
-- ex7	



main = do
    x <- getLine
    y <- getLine
    z <- getLine
    w <- getLine    
    let xAsInt = (read x :: Int)
    let yAsInt = (read y :: Int)
    let zAsInt = (read z :: Int)
    let wAsInt = (read w :: Int)
    print(maior4 xAsInt yAsInt zAsInt wAsInt)