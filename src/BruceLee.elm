module BruceLee exposing (..)

import Bruce exposing (sprite)
import Html.Styled exposing (..)
import Sprite exposing (Frame)


type alias Model =
    { currentFrame : Int
    , frames : List Frame
    }


initialModel : Model
initialModel =
    { currentFrame = 0
    , frames =
        [ Frame -12 -4 16 21
        , Frame -32 -6 14 19
        ]
    }


type Msg
    = Start


update : Msg -> Model -> Model
update msg model =
    { model | currentFrame = 0 }


view : Model -> Html msg
view model =
    Bruce.renderAllFrames initialModel.frames


main : Program Never Model Msg
main =
    beginnerProgram { model = initialModel, view = view, update = update }
