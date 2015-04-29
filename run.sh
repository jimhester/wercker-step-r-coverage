#!/bin/bash

run_script () {
  temp_file=$(mktemp -t "XXXXXXXXXX.R")
  cat > "$temp_file"
  Rscript "$temp_file"
  if [[ $? -ne 0 ]]; then
    fail "Script $temp_file failed!"
  fi
}

run_script <<END
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
devtools::install_github("jimhester/covr")
covr::codecov($WERCKER_R_COVR_OPTIONS)
END

success "Coverage successfull!"
