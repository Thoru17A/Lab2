import qualified Data.Map as Map

main :: IO ()
main = do
    let pairs = [["Новосибирск", "Новосибирск"]]
    putStrLn $ findFinal pairs

findFinal :: [[String]] -> String
findFinal pairs =
    let startCount = foldl (\m [start, _] -> Map.insertWith (+) start 1 m) Map.empty pairs
        endCount = foldl (\m [_, end] -> Map.insertWith (+) end 1 m) Map.empty pairs
        nonStartingEnds = filter (`Map.notMember` startCount) $ Map.keys endCount
    in case nonStartingEnds of
        [] -> "обратитесь к специалисту"
        (end:_) -> end
