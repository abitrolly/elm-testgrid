-- Dependencies:
--
--   elm install elm/svg

module Main exposing (..)

import Svg exposing (..)
import Svg.Attributes exposing (..)


main =
  svg
    [ width "400", height "100" ]
    [ rect [ width "10", height "10" ] []
    , rect [ x "10", y "10", width "10", height "10" ] []
    , rect [ x "20", y "10", width "10", height "10" ] []
    , rect [ x "30", y "10", width "10", height "10" ] []
    , rect [ x "40", y "10", width "10", height "10" ] []
    , rect [ x "50", y "10", width "10", height "10" ] []
    , rect [ x "60", y "10", width "10", height "10", fill "red" ] []
    , rect [ x "70", y "10", width "10", height "10", fill "green" ] []
    ]
