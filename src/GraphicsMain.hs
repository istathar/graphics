{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-unused-do-bind #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

import Data.GI.Base
import qualified GI.Gtk as Gtk

main :: IO ()
main = do
  Gtk.init Nothing

  window <- new Gtk.Window [#title := "Hi there"]

  on window #destroy Gtk.mainQuit

  button <- new Gtk.Button [#label := "Click me"]

  on
    button
    #clicked
    ( set
        button
        [ #sensitive := False,
          #label := "Thanks for clicking me"
        ]
    )

  #add window button

  #showAll window

  Gtk.main
