import Data.List (elemIndex)

main :: IO ()
main = do
    let N = 10
        X = 1
        S = "1000100111"

    if AllCooperatives N X S
        then putStrLn "Yes"
        else putStrLn "No"

-- Function to check if all towers can be repaired
AllCooperatives :: Int -> Int -> String -> Bool
AllCooperatives N X S = all (`canBeRepaired` N X S) [0..(N-1)]

-- Function to check if a tower can be repaired
canBeRepaired :: Int -> Int -> String -> Int -> Bool
canBeRepaired N X S i
    | S !! i == '1' = True
    | otherwise = leftTowerWorks || rightTowerWorks
    where
        leftTowerWorks = if i - X < 0 then False else S !! (i - X) == '1'
        rightTowerWorks = if i + X >= N then False else S !! (i + X) == '1'
