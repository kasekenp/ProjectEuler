f :: Integer -> Integer -> Integer
f n x
  | n `mod` x == 0 = f (n `div` x) x + 1
  | n `mod` x /= 0 = 0

g :: Integer -> Integer
g x = maximum [f n x | n <- [2,3..20]]

main :: IO ()
main = do
    putStr $ show $ product $ [x ^ (g x)|x <- [2,3,5,7,11,13,17,19]]