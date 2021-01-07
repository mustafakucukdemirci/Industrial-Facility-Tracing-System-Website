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
  div[][
    div [style "text-align" "center"
    ,style "padding-top" "0.5cm"
    ,style "padding-bottom" "1cm"
    ,style "background-color" "red"
    ,style "font-size" "35px"] [ text "Industrial Facility Tracing System" ]
    ,span [][text "shine menu 1",
    span [style "padding-left" "5cm"][text "love you"],
    span [style "padding-left" "5cm"][text "love you too"],
    br[][],
    span [][text "muse menu 1"]]
    ]
  
  


    
