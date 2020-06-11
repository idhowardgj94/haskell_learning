-- guarded 
map' :: (a->b) -> [a] -> [b]
map' f lt 
  | length lt == 0 = []
  | otherwise = (f $ head lt) : (map' f $ tail lt)

-- pattern matching 
mapp' :: (a->b) -> [a] -> [b]
mapp' _ [] = []
mapp' f (x : xs) = (f $ x) : (mapp' f xs)

-- case when
-- it's pattern's syntax sugar
mapc' :: (a->b) -> [a] -> [b]
mapc' f x =
  case x of 
    [] -> []
    (x : xs) -> (f $ x) : (mapp' f xs)

main = do
  putStrLn "practice pattern matching and guarded."
