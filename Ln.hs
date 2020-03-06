module Ln (ln) where

--Log base e -> ln
potencia :: Double -> Double -> Double
potencia x 0 = 1
potencia x n = (x) * (potencia x (n-1) )

suma :: Double -> Double
suma n = (2*n)+1

divisionN :: Double -> Double
divisionN n = ( 1 / (suma n)) 

divisionX :: Double -> Double -> Double
divisionX x n = potencia ((x-1)/(x+1)) (suma n)

multiplicacion :: Double -> Double -> Double
multiplicacion x n = ((divisionN n) * (divisionX x n))

calcular :: Double -> Double -> Double
calcular x (-1) = 0
calcular 1 n = 0
calcular x n = (((multiplicacion x n ) + (calcular x (n-1) ) ))

ln :: Double->Double->Double
ln x n 
    | x < 1 = 0.0
    | otherwise = 2 * (calcular x n )