import Rayout
import Diagrams.Backend.Cairo.CmdLine

main = defaultMain $ cellDiagram visBlock (1280,720) $
	P 0 (2/3,0) 
		(P 1 (2/3,0) 
			(C "a")
			(C "b")
		)
		(C "r")
