import Data.Char (isUpper, isLower, isDigit)

strong :: String -> Bool
strong password =
  length password >= 15 &&
  any isUpper password &&
  any isLower password &&
  any isDigit password   
  
main :: IO ()
main = do
    let result = strong "sup3rL33Tpassw0rd"
    putStrLn $ show result
