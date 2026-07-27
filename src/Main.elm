module Main exposing (Msg(..), main)

import Browser
import Html exposing (button, div, h1, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


main : Program () Int Msg
main =
    Browser.sandbox { init = 0, update = update, view = view }


type Msg
    = Increment
    | Decrement


update : Msg -> number -> number
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Int -> Html.Html Msg
view model =
    div [ class "p-8 space-y-4" ]
        [ h1 [ class "text-3xl font-bold" ] [ text "Elm + daisyUI" ]
        , button [ onClick Decrement, class "btn btn-primary" ] [ text "Primary Button (-)" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Increment, class "btn btn-secondary" ] [ text "Secondary Button" ]
        ]
