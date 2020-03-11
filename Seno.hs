module Seno (seno) where
import qualified Potencia as POTENCIA
import qualified Factorial as FACTORIAL

division :: Double -> Double -> Double
division x n = ( (POTENCIA.potencia (-1) n) / (FACTORIAL.factorial((2*n)+1)) )  *  (POTENCIA.potencia x ((2*n)+1))

seno :: Double -> Double -> Double
seno x (0) = x
seno x n = (division (x) n ) + (seno x (n-1))