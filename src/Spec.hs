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

