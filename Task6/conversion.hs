convert :: (Double, [Char]) -> (Double, [Char])
convert (value, "m") = (value * 1.09361, "yd")
convert (value, "yd") = (value / 1.09361, "m")
convert (value, "l") = (value * 0.264172, "gal")
convert (value, "gal") = (value / 0.264172, "l")
convert (value, "kg") = (value * 2.20462, "lb")
convert (value, "lb") = (value / 2.20462, "kg")

main :: IO ()
main = do 
    let result = convert(1, "m")
    putStrLn $ show result
