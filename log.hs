module Log (logaritmo) where
import qualified Ln as LN

logaritmo :: Double->Double->Double
logaritmo a b = (LN.ln b 100)/(LN.ln a 100)