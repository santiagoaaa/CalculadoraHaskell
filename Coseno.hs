module Coseno (coseno) where
import qualified Potencia as POTENCIA
import qualified Factorial as FACTORIAL

division :: Double -> Double -> Double
division x n =  ( (POTENCIA.potencia (-1) n ) / (FACTORIAL.factorial(2*n)) )  *  (POTENCIA.potencia x (2*n))

coseno :: Double -> Double -> Double
coseno angulo (-1) = 0
coseno angulo n = (division angulo n ) + (coseno angulo (n-1))

r :: Double -> Double
r = fromIntegral . round