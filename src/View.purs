module View where

import Prelude

import Data.Array (fold, singleton)
import Gimel.Attributes (href, (=:), style)
import Gimel.Html (Html, span, h1, h3, text)
import Gimel.MaterialUI (appBar, box, container, toolbar)
import Gimel.React.Router (browserRouter, exact, path, route, switch, link)
import Types (Event, Model)
import View.NotFound as NotFound

view :: Model -> Html Event
view _ = container []
  [ box [style {marginTop: "115px"}] [router]
  ]
 where
  router = browserRouter []
    [ header
    , switch []
      [ route [exact true, path "/"] [text "root"]
      , route [path "/docs"] [text "docs"]
      , route [path "/try"] [text "try"]
      , route [] [NotFound.view]
      ]
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
whiteLink path el = 
  link ["to" =: path, style {color: "white", marginRight: "25px"}] [el]

whiteLinkBold :: forall event. String -> Html event -> Html event
whiteLinkBold path el =
  link [href path, style {fontWeight: "bold", color: "white"}] [el]
