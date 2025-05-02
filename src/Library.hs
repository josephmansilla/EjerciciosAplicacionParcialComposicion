{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Eta reduce" #-}
module Library where
import PdePreludat

siguiente :: Number -> Number
siguiente numero = numero + 1

siguiente' :: Number -> Number
siguiente' numero = 1 + numero

siguiente'' :: Number -> Number
siguiente'' numero = (+1) numero

siguiente''' :: Number -> Number
siguiente''' = (+1)

-- Ej: > siguiente 1 
--     > 2

mitad :: Number -> Number
mitad numero = numero / 2

mitad' :: Number -> Number
mitad' = (/2) 

-- Ej: > mitad 4 
--     > 2

esPositivo :: Number -> Bool
esPositivo numero = numero > 0

esPositivo' :: Number -> Bool
esPositivo' numero = (>0) numero

esPositivo'' :: Number -> Bool
esPositivo'' = (>0)

-- Ej: > esPositivo 1
--     > True

multiploDe :: Number -> Number -> Bool
multiploDe divisor dividendo = mod dividendo divisor == 0

esMultiploDe :: Number -> Number -> Bool
esMultiploDe dividendo divisor = mod dividendo divisor == 0

esMultiploDe' :: Number -> Number -> Bool
esMultiploDe' dividendo divisor = dividendo `mod` divisor == 0

esMultiploDe'' :: Number -> Number -> Bool
esMultiploDe'' dividendo divisor = (==0) (dividendo `mod` divisor)

esMultiploDe''' :: Number -> Number -> Bool
esMultiploDe''' dividendo = (==0). (dividendo `mod`) 


-- Ej: > 9 `esMultiploDe` 3
--     > True

moduloInfija :: Number -> Number -> Number
moduloInfija unNumero otroNumero = unNumero `mod` otroNumero

divisionPrefija :: Number -> Number -> Number
divisionPrefija unNumero otroNumero = (/) unNumero otroNumero

doble :: Number -> Number 
doble numero = numero * 2

triple :: Number -> Number
triple numero = numero * 3

cuadruple :: Number -> Number
cuadruple numero = numero * 4


aplicarTripleDejarPares :: [Number] -> [Number]
aplicarTripleDejarPares lista = filter even (aplicarTriple lista)

aplicarTriple :: [Number] -> [Number]
aplicarTriple lista = map triple lista

aplicarTripleDejarPares' :: [Number] -> [Number]
aplicarTripleDejarPares' lista = (filter even . aplicarTriple) lista

aplicarTripleDejarPares'' :: [Number] -> [Number]
aplicarTripleDejarPares'' lista = (filter even.map triple) lista


longitudStrings :: [String] -> [Number]
longitudStrings lista = map length lista
-- ["hola", "que", "tal"]

topTres :: [a] -> [a]
topTres lista = take 3 lista

tomar3CharsDeCada :: [String] -> [String]
tomar3CharsDeCada lista = map topTres lista

tomar3CharsDeCada' :: [String] -> [String]
tomar3CharsDeCada' lista = map (take 3) lista

tomarNCharsDeCada :: [String] -> Number -> [String]
tomarNCharsDeCada lista cantidad = map (take cantidad) lista
-- map  (take 2)  ["hola", "que", "tal"]

cuantosPares' :: [Number] -> Number
cuantosPares' lista = length (filter even lista)

cuantosPares'' :: [Number] -> Number
cuantosPares'' lista = (length . filter even) lista

cuantosPares :: [Number] -> Number
cuantosPares = length . filter even

-- Ejericio Papas

type Papa = String

--cortar :: Papa -> Papa
--pelar :: Papa -> Papa

cortar :: Papa -> Papa
cortar papa = undefined

pelar :: Papa -> Papa
pelar papa = undefined

pelarYCortar :: Papa -> Papa
pelarYCortar papa = cortar (pelar papa)

pelarYCortar' :: Papa -> Papa
pelarYCortar' = cortar . pelar 

pelarYCortarVarias :: [Papa] -> [Papa]
pelarYCortarVarias papas = map pelarYCortar papas

pelarYCortarVarias' :: [Papa] -> [Papa]
pelarYCortarVarias' papas = map (cortar.pelar) papas

pelarYCortarVarias'' :: [Papa] -> [Papa]
pelarYCortarVarias'' = map (cortar.pelar)
