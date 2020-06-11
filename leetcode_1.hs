import System.IO
shuffle :: [Int] -> [Int] -> [Int] -> Maybe [Int]
shuffle carry' arr1' arr2'
  | length arr1' /= 0 = shuffle (carry' ++ [head arr1', head arr2']) (tail arr1') (tail arr2')
  | otherwise = Just carry'

shuffleArray :: [Int] -> Int -> Maybe [Int]
shuffleArray arr b 
  | isDo == True = shuffle [] (take b arr) (drop b arr)
  | isDo == False = Nothing
  where isDo = (length arr == b * 2)


main = do
  putStrLn "from leet code url: https://leetcode.com/problems/shuffle-the-array/"
