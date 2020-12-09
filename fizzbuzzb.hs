fizzbuzz :: Integer -> String
fizzbuzz n | n `mod` 3 == 0 && n `mod` 5 == 0 = "fizzbuzz"
           | n `mod` 3 == 0 = "fizz"
           | n `mod` 5 == 0 = "buzz" 
           | otherwise = show n
map' :: (a -> b) -> [a] -> [b]
map' fizzbuzz = foldr ((:).fizzbuzz) []
fbmap = map' fizzbuzz [1..16] --short cut to use on the terminal