import Data.List (elemIndex)

sumOfNumbers :: [Int] -> Int
sumOfNumbers numbers = sum [number | number <- numbers, odd (digitAt (show number) (length (show number) - i - 1))]
    where i = [0..(length (show number) - 1)]

main :: IO ()
main = print (sumOfNumbers [4, 101, 32, 21, 112, 332, 22, 67])
