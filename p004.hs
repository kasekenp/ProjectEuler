main :: IO ()
main = putStrLn $ show $ maximum [ x * y | x <- [100,101..999], y <- [100,101..999], (show (x * y)) == (reverse $ show (x * y))]