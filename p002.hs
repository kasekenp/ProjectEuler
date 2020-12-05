f :: Int -> Int -> Int
f x y = if x + y > 4000000 then 0 else f y (x + y) + (if even (x + y) then (x + y) else 0)

main :: IO ()
main = putStrLn $ show $ f 1 1