-- Dependencies:
--
--   elm install elm/svg

module Main exposing (..)

import Svg exposing (..)
import Svg.Attributes exposing (..)


main =
  svg [ width "300", height "100" ]
    [ text_ [ y "100", fontSize "50" ]
      [ text "Hello" ]]
