-- Dependencies:
--
--   elm install elm/svg

module Main exposing (..)

import Html exposing (Html, div, button, text)
import Html.Attributes exposing (style)
import Svg exposing (..)
import Svg.Attributes exposing (..)


main = view init


-- MODEL

type alias Model =
  { boxcolor : String }

init : Model
init =
  { boxcolor = "black" }


-- UPDATE


-- VIEW

view : Model -> Html Never
view model =
  div [] [
  button [ Html.Attributes.style "height" "20px",
           Html.Attributes.style "padding" "0",
           -- trying to keep text label inside button
           Html.Attributes.style "line-height" "0",
           -- place button at the top of the parent div
           Html.Attributes.style "vertical-align" "top"
         ]
         [ Html.text ">>" ],
  svg
    [ width "400", height "100" ]
    [ rect [ width "10", height "10", fill model.boxcolor ] []
    , rect [ x "10", y "10", width "10", height "10" ] []
    , rect [ x "20", y "10", width "10", height "10" ] []
    , rect [ x "30", y "10", width "10", height "10" ] []
    , rect [ x "40", y "10", width "10", height "10" ] []
    , rect [ x "50", y "10", width "10", height "10" ] []
    , rect [ x "60", y "10", width "10", height "10", fill "red" ] []
    , rect [ x "70", y "10", width "10", height "10", fill "green" ] []
    ]]
