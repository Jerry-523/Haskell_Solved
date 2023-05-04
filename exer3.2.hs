--Crie uma função isApproved que recebe uma nota e determina se um aluno está
--aprovado ou não:
--OBS: Aprovado para notas maior ou igual a 12

isApproved :: (Ord a, Num a) => a -> String
isApproved n = if n >= 12 then "Aprovado"
                else "Reprovado"


--Crie uma função que recebe como parâmetro uma função isApproved do exercício
--anterior e uma lista contendo o nome e a nota do aluno e deverá retornar uma lista
--só com alunos aprovados

altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap _ _ [] = []
altMap a b [n] = a n : altMap a b []
altMap a b (x:y:z) = a x : b y : altMap a b z


nota :: (t -> b) -> [(a, t)] -> [(a, b)]
nota isApproved [] = []
nota isApproved [(a, b)] = [(a, isApproved (b))]






