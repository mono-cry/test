
fib 0         = 0
fib 1         = 1
fib n | n > 0 = fib(n - 2) + fib(n - 1)

-- fib n
--     |n == 0    = 0
--     |n == 1    = 1
--     |otherwise | n > 0 = (fib - 2) + fib(n - 1)

-- fib n = case n of
--      0 -> 0
--      1 -> 1
--      _ | n > 0 -> fib(n - 1) + fib(n - 2)
     
length' []     = 0
length' (_:xs) = 1 + length' xs

sum' []     = 0
sum' (x:xs) = x + sum' xs

product' []     = 1
product' (x:xs) = x * product' xs

take' _ []        = []
take' n _ | n < 1 = []
take' n (x:xs)    = x : take' (n - 1) xs

drop' _ []         = []
drop' n xs | n < 1 = xs
drop' n (_:xs)     = drop' (n - 1) xs

reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- reverse' xs = f xs []
--     where
--         f []     ys = ys
--         f (x:xs) ys = f xs (x:ys)

-- fact 1 = 1
-- fact n | n > 0 = n * fact(n - 1)

fact n = product[1..n]

-- 垂線の交点
perpPoint (p, q) (a, b, c) = (x, y)
    where
        x = (a * c + b * d) / (a * a + b * b)
        y = (d * c - a * d) / (a * a + b * b)
        d = b * p - a * q

main = do
    -- let a = "hello"
    -- print a
    -- print $ "world"
    -- print $ fib 6
    -- print $ sum [fib 0..fib 5]
    print $ length [1..5]
    print $ length' [1..5]
    print $ sum [1..5]
    print $ sum' [1..5]
    print $ product [1..5]
    print $ product' [1..5]
    print $ take 2 [1..5]
    print $ take' 2 [1..5]
    print $ drop 2 [1..5]
    print $ drop' 2 [1..5]
    print $ reverse [1..5]
    print $ reverse' [1..5]
    print $ fact 5
    print $ perpPoint (0, 2) (1, -1 , 0)
