module Main exposing (..)
import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)



-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }



-- MODEL

type alias Model = Int

type User =
  Regular {name : String, age: Int }
  | Anonymous

init : Model
init =
  0


-- UPDATE

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1


-- VIEW

view : Model -> Html Msg
view model =
  div [] [
    div [style "text-align" "center"
               , style "background-color" "rgb(44 53 49)"
               , style "color" "rgb(255 255 255)"
               , style "font-size" "4em" ][ text "Industrial Facility Tracing System" ],
    div [style "background-color" "rgb(216 176 140)"]
        [ b [ style "font-size" "28px"
            , style "font-size" "2em"
            , style "padding-left" "5cm"][ text "Menu A"],
          b [ style "font-size" "2em"
            , style "padding-left" "8cm"][ text "Menu B"],
          b [ style "font-size" "2em"
            , style "padding-left" "8cm"][ text "Menu C"]],
    br[][],
    span[style "background-color" "rgb(210 233 226)" ][div [ style "font-size" "2em"
                                                           , style "text-align" "left"][text "Menu 1"],
                                                       div [ style "font-size" "2em"
                                                           , style "text-align" "left"][text "Menu 2"] ]

    ]
  
  


    
