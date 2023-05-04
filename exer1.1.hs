
superior :: Ord a => [a] -> a -> [a]
superior [] n = []
superior (x:xs) n 
    | x <= n = superior xs n
    | otherwise = x:superior xs n
