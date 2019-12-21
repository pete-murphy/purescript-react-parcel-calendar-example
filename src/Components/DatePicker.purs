module DatePicker where

import Prelude
import Data.JSDate (JSDate)
import Effect.Uncurried (EffectFn2)
import React.Basic (JSX, ReactComponent, element)
import React.Basic.Events (SyntheticEvent)

datePicker :: Props -> JSX
datePicker = element jsDatePicker

type Props
  = { selected :: JSDate
    , showPopperArrow :: Boolean
    , onChange :: EffectFn2 JSDate SyntheticEvent Unit
    }

foreign import jsDatePicker ::
  ReactComponent Props
