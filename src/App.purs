module App where

import Prelude
import Data.JSDate as JSD
import DatePicker (datePicker)
import Effect (Effect)
import Effect.Uncurried (mkEffectFn2)
import React.Basic (ReactComponent)
import React.Basic.Hooks (component, useState, (/\))
import React.Basic.Hooks as React

mkApp :: Effect (ReactComponent {})
mkApp = do
  now' <- JSD.now
  component "App" \_ -> React.do
    date /\ setDate <- useState now'
    pure do
      datePicker
        { selected: date
        , showPopperArrow: true
        , onChange: mkEffectFn2 (\d _ -> setDate (const d))
        }
