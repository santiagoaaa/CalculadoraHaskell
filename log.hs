module Log (logaritmo) where
import qualified Ln as LN

logaritmo :: Double->Double->Double
logaritmo numero base = (LN.ln numero 100)/(LN.ln base 100)