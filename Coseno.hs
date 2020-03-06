module Coseno (coseno) where

potencia :: Double -> Double -> Double
potencia x 0 = 1
potencia x n = (x) * (potencia x (n-1) )

factorial :: Double -> Double
factorial 0 = 1
factorial n = n * factorial (n - 1)

division :: Double -> Double -> Double
division x n =  ( (potencia (-1) n ) / (factorial(2*n)) )  *  (potencia x (2*n))

coseno :: Double -> Double -> Double
coseno angulo (-1) = 0
coseno angulo n = (division angulo n ) + (coseno angulo (n-1))

r :: Double -> Double
r = fromIntegral . round