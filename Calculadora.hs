import qualified Cosecante as CSC
import qualified Coseno as COS
import qualified Cotangente as COT
import qualified Exponencial as EXP
import qualified Factorial as FACT
import qualified Ln as LN
import qualified Log as LOG
import qualified Potencia as POT
import qualified Secante as SEC
import qualified Seno as SEN
import qualified Tangente as Tangente
import System.IO

main = do
    hSetBuffering stdin LineBuffering
    doLoop

doLoop = do
    putStrLn "***MENU DE OPERACIONES***"
    putStrLn "Presiona el numero de opcion que quieras \n1 -> Aritmeticas\n2 -> Trigonometricas\n3 -> Logaritmos\n4 -> Estadistica\nq -> salir"
    opcion <- getLine
    case opcion of
        'q':_-> do return()
        '1':_ ->do doAritmeticas
        '2':_ ->do doTrigonometricas
        '3':_ ->do doLogaritmos


doAritmeticas = do
     putStrLn ("Operaciones Aritmeticas")
     putStrLn("+ -> suma\n- -> resta\n* -> multiplicacion\n/ -> division\nq -> menu anterior ")
     opcion <- getLine
     case opcion of
         'q':_-> do doLoop

         '+':_ -> do putStrLn("Suma")
                     doAritmeticas

         '-':_ -> do putStrLn("Resta")
                     doAritmeticas
         '*':_ -> do putStrLn("Multiplicacion")
                     doAritmeticas
         '/':_ -> do putStrLn("Division")
                     doAritmeticas

doTrigonometricas = do
    putStrLn ("Operaciones Trigonometricas")
    putStrLn ("1 -> coseno\n2 -> seno\n3 -> tangente\n4 -> secante\n5 -> cotangente\n6 -> cosecante\nq -> menu anterior")
    opcion <- getLine
    case opcion of
        'q':_-> do doLoop
        
        '1':_ -> do putStrLn("Coseno")
                    doTrigonometricas
        '2':_ -> do putStrLn("Seno")
                    doTrigonometricas
        '3':_ -> do putStrLn("Tangente")
                    doTrigonometricas
        '4':_ -> do putStrLn("Secante")
                    doTrigonometricas
        '5':_ -> do putStrLn("Cotangente")
                    doTrigonometricas
        '6':_ -> do putStrLn("Cosecante")
                    doTrigonometricas

doLogaritmos = do
    putStrLn("Logaritmos")
    putStrLn("1 -> Log\n2 -> Ln\nq -> menu anterior")
    opcion <- getLine
    case opcion of
        'q':_-> do doLoop
        '1':_ -> do putStrLn("Log")
                    doLogaritmos
        '2':_ -> do putStrLn("Ln")
                    doLogaritmos
        