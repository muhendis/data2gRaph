# data2gRaph


<img align="right" width="230" height="230" src="https://github.com/muhendis/data2gRaph/blob/master/www/logo.png"> Visualization is of great importance for data science and machine learning. Because it allows you to become aware of unnoticed details.

The data2gRaph project is a web-based data visualization tool that can also be used off-line. It consists of 3 parts:

    > The first section visualizes statistical information.

    > The second section visualizes using machine learning information.

    > The third section visualizes create a mix plot using different plots.
    
#### [click to screenshots](https://github.com/muhendis/data2gRaph/tree/master/Example%20graph)

## Content of the the application

##### About
      
##### Input Data
      
##### Statistical Plots
               
           Measures of Central Tendency
               
           Measures of Dispersion
               
           Covariance Matrix
               
           Correlation Analyses

##### Unsupervised ML Plots
               
            Principal Component Analysis 
               
            K-means Clustering
               
            Hierarchical Clustering
               
               
    
##### Mix Plots
               
            Scatter+Rug+Hist
               
            Density+Densigram 
               
            Hexagonal+Boxplot
               
            Complex Heatmap


## Installation steps	
1. Download this pogram where you want to run it, [click to download](https://github.com/muhendis/data2gRaph/archive/master.zip)	

2. Run the file named Packages_to_be_installed.R once for the required packages.	

```	
../data2gRaph/Packages_to_be_installed.R	

```	

## Running step	


Run the file named app.R.

```	
../data2gRaph/app.R	
```	




## Information about R, OS and attached or installed packages


```{R}
> sessionInfo()
R version 3.6.1 (2019-07-05)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 18.04.3 LTS

Matrix products: default
BLAS:   /usr/lib/x86_64-linux-gnu/openblas/libblas.so.3
LAPACK: /usr/lib/x86_64-linux-gnu/libopenblasp-r0.2.20.so

locale:
 [1] LC_CTYPE=tr_TR.UTF-8       LC_NUMERIC=C               LC_TIME=tr_TR.UTF-8        LC_COLLATE=tr_TR.UTF-8     LC_MONETARY=tr_TR.UTF-8   
 [6] LC_MESSAGES=tr_TR.UTF-8    LC_PAPER=tr_TR.UTF-8       LC_NAME=C                  LC_ADDRESS=C               LC_TELEPHONE=C            
[11] LC_MEASUREMENT=tr_TR.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] grid      stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
 [1] hexbin_1.28.0         ComplexHeatmap_2.2.0  ggExtra_0.9           ggpubr_0.2.4          magrittr_1.5          ggfortify_0.4.8      
 [7] viridis_0.5.1         viridisLite_0.3.0     reshape2_1.4.3        ggthemes_4.2.0        ggplot2_3.2.1         RColorBrewer_1.1-2   
[13] corrplot_0.84         shinycssloaders_0.2.0 DT_0.10               shinydashboard_0.7.1  shiny_1.4.0          

loaded via a namespace (and not attached):
 [1] shape_1.4.4         circlize_0.4.8      GetoptLong_0.1.7    tidyselect_0.2.5    purrr_0.3.3         lattice_0.20-38    
 [7] colorspace_1.4-1    vctrs_0.2.0         miniUI_0.1.1.1      htmltools_0.4.0     rlang_0.4.1         later_1.0.0        
[13] pillar_1.4.2        glue_1.3.1          withr_2.1.2         lifecycle_0.1.0     plyr_1.8.4          stringr_1.4.0      
[19] munsell_0.5.0       ggsignif_0.6.0      gtable_0.3.0        htmlwidgets_1.5.1   GlobalOptions_0.1.1 fastmap_1.0.1      
[25] httpuv_1.5.2        parallel_3.6.1      Rcpp_1.0.3          xtable_1.8-4        promises_1.1.0      scales_1.1.0       
[31] backports_1.1.5     mime_0.7            gridExtra_2.3       rjson_0.2.20        png_0.1-7           digest_0.6.23      
[37] stringi_1.4.3       dplyr_0.8.3         clue_0.3-57         tools_3.6.1         lazyeval_0.2.2      tibble_2.1.3       
[43] cluster_2.1.0       crayon_1.3.4        tidyr_1.0.0         pkgconfig_2.0.3     zeallot_0.1.0       assertthat_0.2.1   
[49] rstudioapi_0.10     R6_2.4.1            compiler_3.6.1 
```


## Several screenshots of the application

<p align="center">
<img  width="1900" height="500" src="https://github.com/muhendis/data2gRaph/blob/master/Example%20graph/about.png"> 
</p>

<p align="center">
<img  width="1900" height="500" src="https://github.com/muhendis/data2gRaph/blob/master/Example%20graph/input.png"> 
</p>

<p align="center">
<img  width="1900" height="500" src="https://github.com/muhendis/data2gRaph/blob/master/Example%20graph/CH.png"> 
</p>
