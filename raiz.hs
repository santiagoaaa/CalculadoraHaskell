module Raiz (raiz) where
import qualified Ln as LN
import qualified Exponencial as EXP

raiz :: Double->Double
raiz x = EXP.expo ( (1/2)*(LN.ln x 100) ) 100 