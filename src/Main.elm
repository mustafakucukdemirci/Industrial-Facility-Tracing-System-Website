module Main exposing (..)

--import BarChart exposing (..)
import PieChart exposing (..)
import Browser
import Html exposing (..)
import Html.Attributes exposing (style)
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

-- MAIN
main =
  Browser.sandbox
  { init = init
  , update = update
  , view = view
  }


-- MODEL
type alias Model =
  { content : String
  }


init : Model
init =
  { content = "" }

-- UPDATE

type Msg
  = Change String
  | Show

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent ->
      { model | content = newContent }
    Show ->
        { model | content = "welcome"}

-- VIEW

view : Model -> Html Msg
view model =
  div [] [
    div [style "text-align" "center"
               , style "background-color" "rgb(44 53 49)"
               , style "color" "rgb(255 255 255)"
               , style "font-size" "4em" ][ text "Industrial Facility Tracing System" ]
    , div [style "background-color" "rgb(216 176 140)"]
        [ span[style "padding-left" "8cm"][],
          button [ style "font-size" "2em", style "padding" "2px 30px"
            , onClick Show ][text "Menu A"] , span[style "padding-left" "8cm"][],
          button [ style "font-size" "2em", style "padding" "2px 30px"
            , onClick Show][ text "Menu B"], span[style "padding-left" "8cm"][],
          button [ style "font-size" "2em", style "padding" "2px 30px"
            , onClick Show][ text "Menu C"]]
    , br[][]
    , span[style "background-color" "rgb(210 233 226)"][button [ style "font-size" "2em", style "padding-left" "4cm"
                                                           , style "text-align" "top"][text "Menu 1"],
                                                      br[][],
                                                      button [ style "font-size" "2em", style "padding-left" "4cm"
                                                           , style "text-align" "top"][text "Menu 2"] ]
    {-graph part
    , span[][BarChart.main,
           div[style "padding-left" "5cm"][text "data 1 >> x"]]
-}
    --, span[][PieChart.main]

    ]


