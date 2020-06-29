module Gimel.Attributes.Extra where

import Prelude

import Gimel.Attributes (Attribute, (=:))

width :: forall event. String -> Attribute event
width = (=:) "width"

data Align
  = Center

instance showAlign :: Show Align where
  show = case _ of
    Center -> "center"

alignSelf :: forall event. Align -> Attribute event
alignSelf x = "alignSelf" =: show x