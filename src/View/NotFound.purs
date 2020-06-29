module View.NotFound where

import Prelude

import Gimel.Attributes (style)
import Gimel.Html (Html, text, h1)
import Gimel.MaterialUI (box, elevation, m, p, paper)

view :: forall event. Html event
view = wrapper $ box [m 3.0, p 3.0]
  [ h1 [] [text "Page not found :("]
  , text "Maybe the page you are looking for has been removed, or you typed in the wrong URL"
  ]
 where
  wrapper el = box
    [style {marginLeft: "2.5%", width: "95%"}]
    [paper [elevation 3] [el]]