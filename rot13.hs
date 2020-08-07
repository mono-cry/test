import Data.Char

rot13ch ch
    |  'A' <= ch && ch <= 'M'
    || 'a' <= ch && ch <= 'm' = chr $ ord ch + 13
    |  'N' <= ch && ch <= 'Z'
    || 'n' <= ch && ch <= 'z' = chr $ ord ch - 13
    | otherwise = ch
    
rot13 "" = ""
rot13 (x:xs) = rot13ch x : rot13 xs

main = do
    print $ ord 'A'
    print $ chr 65
    
    let hello13 = rot13 "Hello, World!"
    print hello13
    print $ rot13 hello13
    
    let nsa13 = rot13 "How can you tell an extrovert from an introvert at NSA? In the elevators, the extroverts look at the OTHER guy's shoes."
    print nsa13
    print $ rot13 nsa13
