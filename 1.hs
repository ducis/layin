{-# LANGUAGE NoMonomorphismRestriction #-}

import Diagrams.Prelude
import Diagrams.Coordinates
import Diagrams.Backend.Cairo.CmdLine
import CellLayout


main = defaultMain $ 
	tb "Navigation" 1600 32 
	===
	(tb "Logo" 300 64 ||| tb "Location" 200 32 ||| strutX 100 ||| tb "Search" 600 48) # centerX
	===
	tb "Banner" 1200 256
	===
	(
		(
			tb "Search panel" 800 256
			===
			(
				(tb "Boots" 600 128
				===
				tb "Dress shoes" 600 128) # centerY
				|||
				tb "Brands" 200 256
			)# centerX
			===
			tb "Video" 800 192
			===
			(
				tb "Shop list" 160 384 # alignT 
				|||
				(
					tb "Shop attributes" 640 128
					===
					tb "Shop inventory" 640 256
				) # alignT
			) # centerX
		) # alignT ||| (
			tb "Gadget panel" 400 128
			===
			tb "Shipping cost calc" 400 192
			===
			tb "Top shoes" 400 256
			===
			tb "Viewed items" 400 256
			===
			tb "Top shops" 400 256
		) # alignT 
	) # centerX
	===
	(tb "Links" 600 128 ||| tb "Tips" 600 128) # centerX
	===
	tb "Search" 600 48
	===
	tb "Footer" 1600 144


