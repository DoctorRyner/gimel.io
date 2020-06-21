module View where

import Types (Event, Model)
import Gimel.Html (Html, text)

view :: Model -> Html Event
view _ = text "Hello, World!"