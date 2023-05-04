--A função map do prelúdio recebe uma função e uma lista como argumentos, e aplica a função a cada um dos
--elementos da lista, resultando na lista dos resultados. map é uma função de ordem superior, pois recebe outra
--função como argumento.



altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap _ _ [] = []
altMap a b [n] = a n : altMap a b []
altMap a b (x:y:z) = a x : b y : altMap a b z

                    

                       
