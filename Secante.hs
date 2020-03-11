module Secante (secante) where
import qualified Coseno as COS

secante :: Double->Double->Double
secante x n = (1)/(COS.coseno x n)