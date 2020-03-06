module Factorial (factorial) where
factorial :: Double -> Double
factorial 0 = 1
factorial n = n * factorial (n - 1)