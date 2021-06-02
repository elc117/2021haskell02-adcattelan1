-- Prática 02 de Haskell
-- Nome: Anderson Dalmolin Cattelan

verificaFebre :: Float -> Bool
verificaFebre x = if x > 37.8 then True else False

comFebre :: [Float] -> [Float]
comFebre x = filter verificaFebre x

comFebre' :: [Float] -> [Float]
comFebre' x = filter (\x -> x > 37.8) x

itemize :: [String] -> [String]
itemize x = map (\x -> "<li>" ++ x ++ "</ li>") x

bigCircles :: Float -> [Float] -> [Float]
bigCircles x y = filter ((\x y -> x < (3.1415*(y*y))) x) y

quarentena :: [(String, Float)] -> [(String, Float)]
quarentena x = filter ((>37.8).snd) x

idadesEm :: [Int] -> Int -> [Int]
idadesEm x y = map ((\x y -> x - y) y) x

changeNames :: [String] -> [String]
changeNames x = map (\x -> if head x == 'A' then "Super " ++ x else x) x

onlyShorts :: [String] -> [String]
onlyShorts x = filter (\x -> length x < 5) x