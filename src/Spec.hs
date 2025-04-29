module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Tests de Prueba" $ do

    it "Funcionamiento siguiente" $ do
      siguiente''' 1 `shouldBe` 2

    it "Funcionamiento mitad" $ do
      mitad' 4 `shouldBe` 2

    it "Funcionamiento esPositivo" $ do
      esPositivo'' 1 `shouldBe` True

    it "Funcionamiento esMultiploDe" $ do
      (9 `esMultiploDe'''` 3) `shouldBe` True

    it "Funcionamiento aplicarTripleDejarPares Instancia #1" $ do
      aplicarTripleDejarPares [1,2,3,4,5] `shouldBe` [6,12]

    it "Funcionamiento aplicarTripleDejarPares Instancia #2" $ do
      aplicarTripleDejarPares' [1,2,3,4,5] `shouldBe` [6,12]

    it "Funcionamiento aplicarTripleDejarPares Instancia #3" $ do
      aplicarTripleDejarPares'' [1,2,3,4,5] `shouldBe` [6,12]

    it "Funcionamiento longitudStrings" $ do
      longitudStrings ["feliz", "cumple", "fede","🙂"] `shouldBe` [5,6,4,1]
    
    it "Funcionamiento tomar3CharsDeCada" $ do
      tomar3CharsDeCada ["feliz cumpleaños fede", "Holaaaa", "Re", ""] `shouldBe` ["fel", "Hol", "Re", ""]
    
    it "Funcionamiento tomarNCharsDeCada" $ do
      tomarNCharsDeCada ["prueba", "test", "Do"] 2 `shouldBe` ["pr", "te", "Do"]

      