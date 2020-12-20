main :: IO ()
main = putStrLn $ show $ ((sum [1,2..100]) ^ 2) - (sum [x ^ 2 | x <- [1,2..100]])