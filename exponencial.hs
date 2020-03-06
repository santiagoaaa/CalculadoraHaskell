potencia :: Double -> Double -> Double
potencia x 0 = 1
potencia x n = (x) * (potencia x (n-1))

factorial :: Double -> Double
factorial 0 = 1
factorial n = n * factorial (n - 1)

expo :: Double->Double->Double
expo x 0 = 1
expo x n = ( (potencia x n) / (factorial (n)) ) + ( expo x (n-1))