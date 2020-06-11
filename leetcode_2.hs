testStr :: Char -> [Char]
testStr a
  | a == '.'   = "[.]"
  | otherwise  = [a]

defangIPaddr :: [Char] -> [Char]
defangIPaddr a
  | lengtha == 0 = ""
  | otherwise  = (testStr $ head a) ++ (defangIPaddr $ tail a)
  where lengtha = length a

main = do
  putStrLn "problem in leetcode https://leetcode.com/problems/defanging-an-ip-address/"

