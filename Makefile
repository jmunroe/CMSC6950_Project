default: report.pdf
.PHONY : default

report.pdf: report.tex snow_plot.pdf
	pdflatex report.tex
	##bibtex ..
	## pdflatex report.tex

rescal-snow:
	@echo Please clone and compile rescal-snow
	@echo See README.md for details

SNO00018_t0.csp.gz: rescal-snow
	#./rescal ...
	cp rescal-snow/scripts/SNO00018_t0.csp.gz .

snow_plot.pdf: make_snow_plot.py SNO00018_t0.csp.gz
	python make_snow_plot.py

clean:
	rm *.csp.gz

.PHONY : clean
