module Gimel.MaterialUI where

import Gimel.Attributes (Attribute, (=:))
import Gimel.Html (Html, react)
import MaterialUI.AppBar (classAppBar)
import MaterialUI.Link (classLink)
import MaterialUI.Paper (classPaper)
import MaterialUI.Toolbar (classToolbar)
import MaterialUI.Typography (classTypography)
import React (ReactClass)

typography :: forall event. Array (Attribute event) -> Array (Html event) -> Html event
typography = react classTypography

foreign import classBox :: forall a. ReactClass a

box :: forall event. Array (Attribute event) -> Array (Html event) -> Html event
box = react classBox

m :: forall event. Number -> Attribute event
m = (=:) "m"

p :: forall event. Number -> Attribute event
p = (=:) "p"

paper :: forall event. Array (Attribute event) -> Array (Html event) -> Html event
paper = react classPaper

elevation :: forall event. Int -> Attribute event
elevation = (=:) "elevation"

appBar :: forall event. Array (Attribute event) -> Array (Html event) -> Html event
appBar = react classAppBar

toolbar :: forall event. Array (Attribute event) -> Array (Html event) -> Html event
toolbar = react classToolbar

foreign import classContainer :: forall a. ReactClass a

container :: forall event. Array (Attribute event) -> Array (Html event) -> Html event
container = react classContainer

link :: forall event. Array (Attribute event) -> Array (Html event) -> Html event
link = react classLink