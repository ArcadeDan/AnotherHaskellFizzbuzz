module Main where

fizzbuzz :: Integer -> String
fizzbuzz n 
   | (n `mod` 3) == 0 && (n `mod` 5) == 0 = "FizzBuzz"
   | (n `mod` 3) == 0 = "Fizz"
   | (n `mod` 5) == 0 = "Buzz"
   | otherwise = show n

main :: IO ()
main = print (filter (/= "") (map fizzbuzz [1..100]))
