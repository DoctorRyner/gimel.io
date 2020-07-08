module View where

import Prelude

import Gimel.Attributes (className, style)
import Gimel.Html (Html, h1, h3, text)
import Gimel.MaterialUI (appBar, box, container, toolbar, link)
import Gimel.React.Router (browserRouter, exact, path, route, switch, to)
import Types (Model, Event)
import View.NotFound as NotFound

view :: Model -> Html Event
view _ = browserRouter []
  [ header
  , container []
    [ box [style {marginTop: "115px"}] [routes]
    ]
  ]
 where
  routes = switch []
    [ route [exact true, path "/"] [text "root"]
    , route [path "/docs"] [text "docs"]
    , route [path "/try"] [text "try"]
    , route [] [NotFound.view]
    ]

header :: Html Event
header = appBar []
  [ toolbar
    [ style
      { display: "flex"
      , alignSelf: "center"
      , justifyContent: "space-between"
      , maxWidth: "800px"
      , width: "80%"
      }
    ]
    [ whiteLink "/" $ h1 [] [text "Gimel"]
    , box [style {display: "flex"}]
      [ whiteLink "/docs" $ h3 [] [text "Docs"]
      , whiteLink "/try" $ h3 [] [text "Try"]
      ]
    ]
  ]

whiteLink :: forall event. String -> Html event -> Html event
whiteLink path el = link
  [ to path
  , style {color: "white", marginRight: "25px"}
  , className "underlineOnHover"
  ]
  [el]