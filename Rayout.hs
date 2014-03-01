{-# LANGUAGE NoMonomorphismRestriction, ScopedTypeVariables #-}

module Rayout where

import Diagrams.Prelude
import Diagrams.Coordinates
import Diagrams.Backend.Cairo.CmdLine

tb s w h = text s # fontSize 20 <> rect (w-4) (h-4) # lw 2 <> phantom (rect (w) (h)::D R2)
type DS = Diagram Cairo R2
visBlock w h s = text s # fontSize 20 <> rect (w-4) (h-4) # lw 2 <> phantom (rect (w) (h)::D R2)
data Cell = P Direction (Double,Double){-Frac or 0.618-} Cell Cell | C String
type Direction = Int
cellDiagram vis (w,h) cell = case cell of
	P d (u,v) a b -> centerXY $ f (wa,ha) a `bin` f (wb,hb) b 
		where
		f = cellDiagram vis 
		sep x = (\y->(y,x-y)) (x*u+v)
		((wa,wb), (ha,hb), bin) = [
			(sep w,(h,h),(|||)::DS->DS->DS),
			((w,w),sep h,(===)::DS->DS->DS)] !! d
	C s -> vis w h s 
