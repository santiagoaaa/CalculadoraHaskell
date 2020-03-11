module Tangente (tangente) where
import qualified Coseno as COS
import qualified Seno as SEN

tangente :: Double->Double->Double
tangente x n = (SEN.seno x n)/(COS.coseno x n)