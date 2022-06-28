# Summaries of Genetic Variation

Repository for simulated genetic data presented by [Nunes and Balding (2010)](https://doi.org/10.2202/1544-6115.1576). See https://paperswithcode.com/dataset/summaries-of-genetic-variation for details.

The data comprise

- `csv/coal.csv`: 100,000 simulations with  $\theta\sim\mathrm{Uniform}\left(2,10\right) $ and  $\rho\sim\mathrm{Uniform}\left(0,10\right) $, where  $\theta $ is the scaled mutation rate and  $\rho $ is the scaled recombination rate.
- `csv/coalobs.csv`: 100 simulations with the same prior distribution as for `csv/coal.csv`.
- `csv/coaloracle.csv`: 1,000,000 simulations with  $\theta\sim\mathrm{Uniform}\left(0,10\right) $ and  $\rho\sim\mathrm{Uniform}\left(0,10\right) $.

## Getting the data from scratch

Run

- `make csv` to download data and regenerate the CSV files (`Rscript` and `curl` must be installed).
- `make rda.shasum` to regenerate the checksum file to validate the integrity of the input data (`shasum` and `curl` must be installed).
- `make rda/validate` to validate the `rda` input files checksums (`shasum` and `curl` must be installed).

[comment]: <> (there are some math rendering issues that can be resolved by funky formatting above; see https://github.com/github-community/community/discussions/19480 for details)
