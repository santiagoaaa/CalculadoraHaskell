module Exponencial (expo) where
import qualified Potencia as POTENCIA
import qualified Factorial as FACTORIAL

expo :: Double->Double->Double
expo x 0 = 1
expo x n = ( (POTENCIA.potencia x n) / (FACTORIAL.factorial (n)) ) + ( expo x (n-1))