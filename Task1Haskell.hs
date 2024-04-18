module Main where

main :: IO ()
main = do
    let n = 10
        x = 1
        s = "1000100111"
    putStrLn $ if allCooperatives n x s then "Yes" else "No"

allCooperatives :: Int -> Int -> String -> Bool
allCooperatives n x s = all (canBeRepaired n x s) [0..(n-1)]

canBeRepaired :: Int -> Int -> String -> Int -> Bool
canBeRepaired n x s i
    | s !! i == '1' = True
    | otherwise = leftTowerWorks || rightTowerWorks
    where
        leftTowerWorks = any (== '1') $ take (i - x) $ drop (max 0 (i - x)) s
        rightTowerWorks = any (== '1') $ take (x + 1) $ drop (i + 1) s
