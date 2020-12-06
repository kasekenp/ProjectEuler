f :: Int -> Int
f x
  | x == 1 = 1
  | even x = f (x `div` 2) + 1
  | odd x = f (3 * x + 1) + 1

main :: IO ()
main = putStrLn $ show $ snd $ maximum [(f x, x) | x <- [1..1000000]]