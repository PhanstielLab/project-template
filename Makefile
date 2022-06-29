.PHONY: clean

all:\
	data/greeting.rds\
	plots/example.pdf\
	tables/example.txt

clean:
	rm -rf data/greeting.rds
	rm -rf plots/example.pdf
	rm -rf tables/example.txt
	
data/greeting.rds:\
	scripts/utils/sayHello.R\
	scripts/processing/makeGreeting.R
		mkdir -p data
		Rscript scripts/processing/makeGreeting.R
	
plots/example.pdf\
tables/example.txt:\
	scripts/utils/sayHello.R\
	data/greeting.rds\
	scripts/analysis/example.R
		mkdir -p plots tables
		Rscript scripts/analysis/example.R
		