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
import qualified Tangente as TAN
import qualified Suma as SUM
import qualified Resta as RES
import qualified Multiplicacion as MUL
import qualified Division as DIV
import qualified Media as MED
import qualified Varianza as VAR
import qualified Desviacion as DES
import qualified Raiz as RAI
import System.IO

main = do
    hSetBuffering stdin LineBuffering
    doLoop

doLoop = do
    putStrLn "***MENU DE OPERACIONES***"
    putStrLn "Presiona el numero de opcion que quieras \n1 -> Aritmeticas\n2 -> Trigonometricas\n3 -> Logaritmos-Exponenciales-Raiz Cuadrada\n4 -> Estadistica\nq -> salir"
    opcion <- getLine
    case opcion of
        'q':_-> do return()
        '1':_ ->do doAritmeticas
        '2':_ ->do doTrigonometricas
        '3':_ ->do doLogaritmos
        '4':_ ->do doEstadisticas


doAritmeticas = do
     putStrLn ("Operaciones Aritmeticas")
     putStrLn("+ -> suma\n- -> resta\n* -> multiplicacion\n/ -> division\nq -> menu anterior ")
     opcion <- getLine
     case opcion of
         'q':_-> do doLoop

         '+':_ -> do putStrLn("Suma")
                     putStrLn("Ingresa los numeros a sumar [a,b,c...]")
                     numeros <- readLn
                     putStrLn("\nRESULTADO: ")
                     print(SUM.suma numeros)
                     doAritmeticas
         '-':_ -> do putStrLn("Resta")
                     putStrLn("Primer numero")
                     a <- readLn
                     putStrLn("Segundo numero")
                     b <- readLn
                     putStrLn("\nRESULTADO: ")
                     print(RES.resta a b)
                     doAritmeticas
         '*':_ -> do putStrLn("Multiplicacion a*b")
                     putStrLn("Primer numero")
                     a <- readLn
                     putStrLn("Segundo numero")
                     b <- readLn
                     putStrLn("\nRESULTADO: ")
                     print(MUL.multiplicacion a b)
                     doAritmeticas
         '/':_ -> do putStrLn("Division a/b")
                     putStrLn("Primer numero")
                     a <- readLn
                     putStrLn("Segundo numero")
                     b <- readLn
                     putStrLn("\nRESULTADO: ")
                     print(DIV.division a b)
                     doAritmeticas

doTrigonometricas = do
    putStrLn ("Operaciones Trigonometricas")
    putStrLn ("1 -> coseno\n2 -> seno\n3 -> tangente\n4 -> secante\n5 -> cotangente\n6 -> cosecante\nq -> menu anterior")
    opcion <- getLine
    case opcion of
        'q':_-> do doLoop
        
        '1':_ -> do putStrLn("Coseno")
                    putStrLn("Ingresa angulo en radianes")
                    angulo <- readLn
                    putStrLn("\nRESULTADO: ")
                    print ( round( COS.coseno (angulo) 100))
                    putStrLn("\n")
                    doTrigonometricas
        '2':_ -> do putStrLn("Seno")
                    putStrLn("Ingresa angulo en radianes")
                    angulo <- readLn
                    putStrLn("\nRESULTADO: ")
                    print ( round(SEN.seno (angulo) 100))
                    putStrLn("\n")
                    doTrigonometricas
        '3':_ -> do putStrLn("Tangente")
                    putStrLn("Ingresa angulo en radianes")
                    angulo <- readLn
                    putStrLn("\nRESULTADO: ")
                    print ( TAN.tangente (angulo) 100)
                    putStrLn("\n")
                    doTrigonometricas
        '4':_ -> do putStrLn("Secante")
                    putStrLn("Ingresa angulo en radianes")
                    angulo <- readLn
                    putStrLn("\nRESULTADO: ")
                    print (round( SEC.secante (angulo) 100))
                    putStrLn("\n")
                    doTrigonometricas
        '5':_ -> do putStrLn("Cotangente")
                    putStrLn("Ingresa angulo en radianes")
                    angulo <- readLn
                    putStrLn("\nRESULTADO: ")
                    print ( round(COT.cotangente (angulo) 100))
                    putStrLn("\n")
                    doTrigonometricas
        '6':_ -> do putStrLn("Cosecante")
                    putStrLn("Ingresa angulo en radianes")
                    angulo <- readLn
                    putStrLn("\nRESULTADO: ")
                    print (round( CSC.cosecante (angulo) 100))
                    putStrLn("\n")
                    doTrigonometricas

doLogaritmos = do
    putStrLn("Logaritmos-Exponenciales")
    putStrLn("1 -> Log\n2 -> Ln\n3 -> Exp\n4 -> Raiz Cuadrada\nq -> menu anterior")
    opcion <- getLine
    case opcion of
        'q':_-> do doLoop
        '1':_ -> do putStrLn("Log")
                    putStrLn("Numero")
                    numero <- readLn
                    putStrLn("Base")
                    base <- readLn
                    putStrLn("\nRESULTADO: ")
                    print ( round( LOG.logaritmo numero base ))
                    putStrLn("\n")
                    doLogaritmos
        '2':_ -> do putStrLn("Ln")
                    putStrLn("Numero")
                    numero <- readLn
                    putStrLn("\nRESULTADO: ")
                    print (LN.ln numero 100)
                    doLogaritmos

        '3':_ -> do putStrLn("Exponencial")
                    putStrLn("Numero")
                    numero <- readLn
                    putStrLn("\nRESULTADO: ")
                    print (EXP.expo numero 100)
                    doLogaritmos
        '4':_ -> do putStrLn("Raiz cuadrada")
                    putStrLn("Numero")
                    numero <- readLn
                    putStrLn("\nRESULTADO: ")
                    print (RAI.raiz numero)
                    doLogaritmos
        
doEstadisticas = do
    putStrLn("Estadistica")
    putStrLn("1 -> Media\n2 -> Varianza\n3 -> Desviacion estandar\nq -> menu anterior")
    opcion <- getLine
    case opcion of
        'q':_-> do doLoop
        '1':_ -> do putStrLn("Media")
                    putStrLn("Ingresa [a,b,c,...]")
                    numeros <- readLn
                    putStrLn("\nRESULTADO: ")
                    print(MED.media numeros)
                    doEstadisticas
        '2':_ -> do putStrLn("Varianza")
                    putStrLn("Ingresa [a,b,c,...]")
                    numeros <- readLn
                    putStrLn("\nRESULTADO: ")
                    print(VAR.varianza numeros)
                    doEstadisticas
        '3':_ -> do putStrLn("Desviacion estandar")
                    putStrLn("Ingresa [a,b,c,...]")
                    numeros <- readLn
                    putStrLn("\nRESULTADO: ")
                    print(DES.desviacion numeros)
                    doEstadisticas
                    