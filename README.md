# Summaries of Genetic Variation

Repository for simulated genetic data presented by [Nunes and Balding (2010)](https://doi.org/10.2202/1544-6115.1576). See https://paperswithcode.com/dataset/summaries-of-genetic-variation for details.

Run

- `make csv` to download data and regenerate the CSV files (`Rscript` and `curl` must be installed).
- `make rda.shasum` to regenerate the checksum file to validate the integrity of the input data (`shasum` and `curl` must be installed).
- `make rda/validate` to validate the `rda` input files checksums (`shasum` and `curl` must be installed).
