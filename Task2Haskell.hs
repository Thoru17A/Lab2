import Data.Map (Map, insert, member, keys, fromList)

findFinal :: [[String]] -> String
findFinal pairs = case lookup endCount startCount of
    Nothing -> end
    _ -> "обратитесь к специалисту"
  where
    startCount = fromList $ map (\(a, _) -> (a, 1)) pairs
    endCount = fromList $ map (\(_, b) -> (b, 1)) pairs
    end = head $ keys endCount

main :: IO ()
main = print $ findFinal [["Новосибирск", "Новосибирск"]]
