install.packages(c("corrplot", "DT", "ggExtra", "ggfortify", "ggplot2", "ggpubr", "ggthemes", "hexbin", "RColorBrewer", "reshape2", "shiny", "shinycssloaders", "shinydashboard", "viridis"))

if(!require(devtools)) install.packages("devtools")
devtools::install_github("kassambara/ggpubr")

install.packages("BiocManager")
BiocManager::install("ComplexHeatmap")
