zipWithA :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWithA _ [] _ = []
zipWithA _ _ [] = []
zipWithA f (x:xs) (y:ys) = f x y : zipWithA f xs ys

zipTogether :: [a] -> [b] -> [(a, b)]
zipTogether as bs = zipWithA (\a b -> (a, b)) as bs

main :: IO ()
main = do
    let result = zipTogether [1,2,3] "abc"
    putStrLn $ show result
