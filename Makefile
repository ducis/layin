SHELL := bash

cabal:
	# You don't really need to install the package to run the scripts
	cabal install --only-dependencies && cabal configure && cabal build
2:
	runghc 2.hs -o 2.ps
1:
	runghc 1.hs -o 1.ps
watch2:
	gv -watch 2.ps &
watch1:
	gv -watch 1.ps &
clean:
	rm *.ps *.eps *.png *.pdf *.svg 
.always:
