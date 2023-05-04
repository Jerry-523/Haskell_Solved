comparar :: Ord a => [a] -> Bool
comparar n = if n == selecao n then True
            else False

selecao:: (Ord a) => [a]->[a]
selecao [] = []
selecao xs = [x] ++ selecao (remove x xs)
                    where x = minimo xs

remove:: (Ord a) => a->[a]->[a]
remove a [] = []
remove a (x:xs)
    | a==x = xs
    | otherwise = x:(remove a xs)

minimo::(Ord a) => [a]->a
minimo [] = undefined
minimo [x] = x
minimo (x:xs)
    | x >= (minimo xs) = x
    | otherwise = minimo xs
