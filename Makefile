snow_plot.pdf: make_snow_plot.py
	python make_snow_plot.py

clean:
	rm *.csp.gz

.PHONY : clean
