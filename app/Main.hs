module Main where

import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game

data World = World { fontSc :: Float }

render :: World -> Picture
render w = Translate (-170) (-20)
    $ Scale (sin (fontSc w)) (sin (fontSc w))
    $ Text "Hello World"

onEvent :: Event -> World -> World
onEvent _ w = w

step :: Float -> World -> World
step dt w = World { fontSc = fontSc w + dt * 0.5 }

main :: IO ()
main = play
    (InWindow "emnist yeyey" (400, 400) (10, 10))
    white
    30 -- fps
    (World { fontSc = 0 })
    render
    onEvent
    step
