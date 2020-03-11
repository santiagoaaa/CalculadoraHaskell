module Cotangente (cotangente) where
import qualified Tangente as TAN

cotangente :: Double->Double->Double
cotangente x n = (1)/(TAN.tangente x n)