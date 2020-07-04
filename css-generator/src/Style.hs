module Style where

import Clay

css :: Css
css = do
  body ? do fontFamily ["Roboto"] []

  ".underlineOnHover" ? do
    textDecoration none
    hover & textDecoration underline
