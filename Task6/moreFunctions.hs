kgV :: Int -> Int -> Int
kgV m n
    | m <= 0 = error "..."
    | n <= 0 = error "..."
    | otherwise = (m * n) `div` (gcd m n)
 
ggT :: Int -> Int -> Int
ggT m n 
    | m > n     = ggT (m-n) n
    | m < n     = ggT m (n-m)
    | otherwise = m

main :: IO ()
main = do
    let result = ggT 25 5
    putStrLn $ show result
