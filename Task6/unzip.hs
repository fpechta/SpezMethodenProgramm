unzip' :: [(a, b)] -> ([a], [b])
unzip' = foldr (\(x, y) (xs, ys) -> (x:xs, y:ys)) ([], [])

main :: IO()
main = do
    let result = unzip'[(1, 'a'), (2, 'b'), (3, 'c')]
    putStrLn $ show result
