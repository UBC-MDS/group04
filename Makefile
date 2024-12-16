.PHONY: all

all: report

clean:
	rm -rf results/images/*.png results/models/*.pickle

# Preprocess the data
preprocess:
	python scripts/preprocess.py --raw_data data/ttc-bus-delay-data-2024.csv --preprocessed_data data/ --preprocessor_loc results/models/

# Perform data validation
data_validation: preprocess
	python scripts/ttc_data_validation.py --input-path data/X_train.csv --output-path data/ttc-bus-delay-clean.csv

# Perform eda analysis
eda: data_validation
	python scripts/ttc_eda.py --input-path data/ttc-bus-delay-clean.csv --output-dir results/images

# Generate the analysis report
analysis: eda
	python scripts/analysis.py --data data/ --preprocessor_from results/models/delay_preprocessor.pickle --pipeline results/models --viz results/images/

# Generate the HTML report through quarto
report: analysis
	quarto render reports/ttc_bus_delay_report.qmd --to html
