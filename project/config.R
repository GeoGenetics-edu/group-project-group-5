# Global seed
seed <- 42

# Base directory
if (!exists("base_dir", inherits = TRUE)) {
  base_dir <- getwd()
}

# Output directories
results_dir <- file.path(base_dir, "results")
logs_dir <- file.path(base_dir, "logs")
figures_dir <- file.path(base_dir, "figures")

# Data directory
data_dir <- file.path(
  base_dir,
  "data",
  "D003093_Colitis,_Ulcerative",
  "genus"
)
