module Potencia (potencia) where
    
potencia :: Double -> Double -> Double
potencia x 0 = 1
potencia x n = (x) * (potencia x (n-1))