SHELL := bash

test:
	runghc test.hs -o ps/test.ps
clean:
	rm *.ps *.eps *.png *.pdf *.svg 
1:
	runghc 1.hs -o 1.ps
watchtest:
	gv -watch test.ps &
watch1:
	gv -watch 1.ps &
.always:
