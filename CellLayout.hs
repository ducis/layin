{-# LANGUAGE NoMonomorphismRestriction #-}

module CellLayout where

import Diagrams.Prelude
import Diagrams.Coordinates
import Diagrams.Backend.Cairo.CmdLine

tb s w h = text s # fontSize 20 <> rect (w-4) (h-4) # lw 2 <> phantom (rect (w) (h)::D R2)
data AST = P FLG R2 AST AST | C String
data FLG = X | Y
--interprete root w h = case root of
--	AST flg (
