

ocorrencias :: Eq a => a -> [a] -> Int
ocorrencias n [] = 0
ocorrencias n x = length (contador n x)





contador :: Eq t => t -> [t] -> [t]
contador n [] = []
contador n (x:xs) = if x == n then [x] ++ contador n xs
                    else contador n xs
