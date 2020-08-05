{-# OPTIONS_GHC -fno-warn-unused-imports #-}

module Main where

import Graphics.UI.Gtk

main :: IO ()
main = do
    initGUI
    button <- buttonNewWithLabel "Press!"
    window <- windowNew
    containerAdd window button
    widgetShowAll window
    on window objectDestroy mainQuit

    on button buttonActivated $ do
        putStrLn "Clicked!"

    mainGUI
