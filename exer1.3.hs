import Data.Char
--Crie uma função que dado uma lista retorna a quantidade de letras existentes na lista



conta :: [Char] -> Int
conta [] = 0
conta x = length (alpha x)
--como lista considerei que string é uma lista de char entao o parametro da funcao deve ser uma string
--exemplo: prelude>> conta "qwer.ty23" 
--isto poderia ser usado para validacao de palavras passe: forte, media e fraca

alpha :: [Char] -> [Char]
alpha [] = []
alpha (x:xs) = if isAlpha x then [x] ++ alpha xs
                else alpha xs