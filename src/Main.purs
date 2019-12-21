module Main where

import Prelude
import App (mkApp)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Exception (throw)
import React.Basic (element)
import React.Basic.DOM (render)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.Window (document)

main :: Effect Unit
main = do
  container <- getElementById "root" =<< (map toNonElementParentNode do document =<< window)
  case container of
    Nothing -> throw "Root element not found."
    Just c -> do
      app <- mkApp
      render (element app {}) c
