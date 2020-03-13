module Varianza (varianza) where
import qualified Media as MED


longitud :: [Float] -> Float
longitud [] = 0
longitud (x:xs) = 1.0 + longitud(xs)

suma :: [Float] -> Float
suma [] = 0
suma (x:xs) = x + suma(xs)

sumatoria :: [Float] -> Float
sumatoria (x:xs) = suma(x:xs) / longitud(x:xs)
--varianza
varianza :: [Float] -> Float
varianza xs = sumatoria [(x-y)^2 | x <- xs]
    where y = MED.media xs
