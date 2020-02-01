-- Dependencies:
--
--   elm install elm/svg

module Main exposing (..)


import Browser
import Html exposing (Html, div, button, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)

import Svg exposing (..)
import Svg.Attributes exposing (..)


main =
  Browser.sandbox { init = init, update = update, view = view }


-- MODEL

type alias Model =
  { boxcolor : String }

init : Model
init =
  { boxcolor = "black" }


-- UPDATE

type Msg = Toggle

update : Msg -> Model -> Model
update msg model =
  case msg of
    Toggle ->
      case model.boxcolor of
        "white" ->
          { model | boxcolor = "black" }
        "black" ->
          { model | boxcolor = "white" }
        _ ->
          { model | boxcolor = "" }


-- VIEW

view : Model -> Html Msg
view model =
  div [] [
  button [ onClick Toggle,

           Html.Attributes.style "height" "20px",
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
