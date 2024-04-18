main :: IO ()
main = do
    let numbers = [4, 101, 32, 21, 112, 332, 22, 67]
    print $ sumOfNumbers numbers

sumOfNumbers :: [Int] -> Int
sumOfNumbers numbers = sum $ filter (oddPositionsOddDigits) numbers

oddPositionsOddDigits :: Int -> Bool
oddPositionsOddDigits number =
    let strNumber = show number
        len = length strNumber
        positions = [0..(len-1)]
        oddPositions = filter (\i -> i `mod` 2 /= 0) positions
        digits = map (\i -> read [strNumber !! (len - i - 1)]) oddPositions
    in all odd digits
