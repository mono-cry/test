
bswap [x] = [x]
bswap (x:y:zs)
    | x < y     = y : bswap (x:zs)
    | otherwise = x : bswap (y: zs)
    
bsort [] = []
bsort xs = y : bsort ys
    where
        a  = bswap xs
        y  = last a
        ys = init a

merge xs [] = xs
merge [] ys = ys
merge (x:xs)(y:ys)
    | x < y     = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys
    
msort [] = []
msort [x] = [x]
msort xs = merge (msort (take h xs)) (msort (drop h xs))
    where
        h = (length xs) `div` 2

main = do
    let a = [4, 6, 9, 8, 3, 5, 1, 7, 2]
    print a
    putStrLn ""
    putStrLn "BubbleSort"
    print $ bsort a
    putStrLn ""
    putStrLn "MergeSort" 
    print $ msort a

