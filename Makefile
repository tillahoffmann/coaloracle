.PHONY = ${CSV_PREFIX} ${RDA_PREFIX}

# Targets to download RDA files.

RDA_FILES = coal.rda coalobs.rda coaloracle.rda
URL_coal = https://github.com/dennisprangle/abctools/raw/8c4e440389933722f8288b49bc88c6a38057f511/data/coal.rda
URL_coalobs = https://github.com/dennisprangle/abctools/raw/8c4e440389933722f8288b49bc88c6a38057f511/data/coalobs.rda
URL_coaloracle = https://web.archive.org/web/0if_/https://people.bath.ac.uk/man54/computerstuff/otherfiles/ABC/coaloracle.rda

RDA_PREFIX = rda
RDA_TARGETS = $(addprefix ${RDA_PREFIX}/,${RDA_FILES})

${RDA_TARGETS} : ${RDA_PREFIX}/%.rda :
	mkdir -p $(dir $@)
	curl -L -o $@ ${URL_$*}

${RDA_PREFIX} : ${RDA_TARGETS}

# Targets to convert to CSV.

CSV_PREFIX = csv
CSV_TARGETS = $(addprefix ${CSV_PREFIX}/,${RDA_FILES:.rda=.csv})

${CSV_TARGETS} : ${CSV_PREFIX}/%.csv : ${RDA_PREFIX}/%.rda rda2csv.r
	mkdir -p $(dir $@)
	Rscript --vanilla rda2csv.r $< $* $@

${CSV_PREFIX} : ${CSV_TARGETS}

# Delete all data.

clean :
	rm -rf ${RDA_PREFIX} ${CSV_PREFIX}

# Validate input data.

rda.shasum : ${RDA_TARGETS}
	shasum $^ > $@

rda/validate : rda.shasum
	shasum -c $<
