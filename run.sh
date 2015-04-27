#!/bin/bash

cat > .__temp__ <<END
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
devtools::install_github("jimhester/covr")
covr::codecov()
END
Rscript .__temp__
