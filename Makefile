default: snow_plot.pdf
.PHONY : default

SNO00018_t0.csp.gz: rescal-snow
	#./rescal ...
	cp rescal-snow/scripts/SNO00018_t0.csp.gz .

snow_plot.pdf: make_snow_plot.py SNO00018_t0.csp.gz
	python make_snow_plot.py

clean:
	rm *.csp.gz

.PHONY : clean
