module Sprite exposing (..)

{-
   x, y, w, h,

   a frame: (12,4,16,21)

   Bruce spritesheet is a list of frames.

   an animation is a sequence of frames
   in the game loop.

   type alias Frame =
     { x : Int
     , y : Int
     , w : Int
     , h : Int
     }

-}


type alias Frame =
    { x : Float, y : Float, w : Float, h : Float }
