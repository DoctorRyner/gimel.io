module Generator.Run where

import Clay
import qualified Data.Text.Lazy.IO as TL
import Debug.Trace

import Generator.Styles

generate :: String -> Css -> IO ()
generate path css = TL.writeFile (traceShowId fullPath) $ render css
 where
  fullPath = "../static/css/generated/" <> path <> ".css"

run :: IO ()
run = do
  putStrLn "Generated:\n"
  mapM_ (uncurry generate) styles