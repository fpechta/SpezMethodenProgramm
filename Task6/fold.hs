umdrehen :: [a] -> [a]
umdrehen = foldl (\acc x -> x : acc) []

summe :: Num a => [a] -> a
summe = foldl (+) 0

produkt :: Num a => [a] -> a
produkt = foldl (*) 1

------------------------------------------

umdrehen :: [a] -> [a]
umdrehen = foldr (\x acc -> acc ++ [x]) []

summe :: Num a => [a] -> a
summe = foldr (+) 0

produkt :: Num a => [a] -> a
produkt = foldr (*) 1

main :: IO ()
main = do
  let numbers = [1, 2, 3, 4, 5]
  putStrLn "Umdrehen:"
  print (umdrehen numbers)
  putStrLn "Summe:"
  print (summe numbers)
  putStrLn "Produkt:"
  print (produkt numbers)
