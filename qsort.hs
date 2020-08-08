fact 0 = 1
fact n | n > 0 = n * fact (n - 1)

qsort [] = []
qsort (n:xs) = qsort lt ++ [n] ++ qsort gteq
    where
        lt   = [x | x <- xs, x <  n] 
        gteq = [x | x <- xs, x >= n]

main = do
    print [1..5]
    print [fact 1, fact 2, fact 3, fact 4, fact 5]
    print [fact x | x <- [1..5]]
    print [x | x <- [1..9], x < 5]
    print $ qsort[4, 6, 9, 8, 3, 5, 1, 7, 2]
