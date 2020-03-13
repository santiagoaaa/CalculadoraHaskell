module Desviacion (desviacion) where
import qualified Varianza as VAR
--Desviacion
desviacion :: [Float] -> Float
desviacion xs = sqrt (VAR.varianza xs)