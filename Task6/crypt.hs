import Data.Char (ord, chr)

cipher :: [Char] -> Int -> [Char]
cipher [] _ = [] 
cipher (x:xs) n
  | isLetter x = shiftLetter x n : cipher xs n
  | otherwise  = x : cipher xs n
  where
    isLetter c = c `elem` ['a'..'z'] || c `elem` ['A'..'Z']
    shiftLetter c n
      | isLower c = shift 'a' c n
      | isUpper c = shift 'A' c n
      where
        isLower c = c `elem` ['a'..'z']
        isUpper c = c `elem` ['A'..'Z']
        shift base c n = chr $ (ord c - ord base + n) `mod` 26 + ord base

main :: IO ()
main = do
    let result = cipher "hello" 13
    putStrLn $ show result
