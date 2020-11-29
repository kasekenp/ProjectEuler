f :: Int -> Int
f (x) = if x <= 1000
    then f (x + 1) + (if mod x 3 == 0 || mod x 5 == 0 then x else 0)
    else 0

main :: IO ()
main = putStrLn $ show (f 1)