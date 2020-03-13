module Suma (suma) where
suma :: [Double] -> Double
suma [] = 0
suma(x:xs) = x + suma xs