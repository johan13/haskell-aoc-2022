import Data.List (sortBy)
import Data.List.Split (splitOn)

main :: IO ()
main = do
    input <- parseInput <$> readFile "input01.txt"
    putStrLn ("Day 01 part 1: " ++ show (solution 1 input))
    putStrLn ("Day 01 part 2: " ++ show (solution 3 input))

parseInput :: String -> [[Int]]
parseInput input = map read <$> splitOn [""] (lines input)

solution :: Int -> [[Int]] -> Int
solution n = sum . take n . sortBy (flip compare) . map sum

-- part1 :: [[Int]] -> Int
-- part1 = maximum . map sum
