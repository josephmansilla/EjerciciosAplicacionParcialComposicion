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

