zipTogether :: [a] -> [b] -> [(a,b)]
zipTogether (a:as) (b:bs) = (a,b) : zipTogether as bs
zipTogether _      _      = []

main :: IO ()
main = do
    let result = zipTogether [1,2,3] "abc"
    putStrLn $ show result
