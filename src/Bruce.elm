module Bruce exposing (..)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css)
import Sprite exposing (Frame)


renderAllFrames : List Frame -> Html msg
renderAllFrames frames =
    let
        list =
            List.map sprite frames
    in
    ul [] list


sprite : Frame -> Html msg
sprite frame =
    li
        [ css
            [ width (px frame.w)
            , height (px frame.h)
            , backgroundImage (url "../images/brucelee-characters.png")
            , backgroundPosition2 (px frame.x) (px frame.y)
            , overflow hidden
            ]
        ]
        []
