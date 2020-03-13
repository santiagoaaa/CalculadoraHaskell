module Media (media) where

longitud :: [Float] -> Float
longitud [] = 0
longitud (x:xs) = 1.0 + longitud(xs)

suma :: [Float] -> Float
suma [] = 0
suma (x:xs) = x + suma(xs)

media :: [Float] -> Float
media (x:xs) = suma(x:xs) / longitud(x:xs)