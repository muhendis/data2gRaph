library(shiny)

library(shinydashboard)

library(DT)#table

require(shinycssloaders)# table

library(corrplot)

library(RColorBrewer)

library(ggplot2)

library(ggthemes) 

library(reshape2) # ::melt

library(viridis)#color,https://cran.r-project.org/web/packages/viridis/vignettes/intro-to-viridis.html

library(ggfortify)#k-meansplot and pcaplot, https://cran.r-project.org/web/packages/ggfortify/vignettes/plot_pca.html

library(ggpubr) #mixplot

library("ggExtra")#mixplot

library(ComplexHeatmap)#source("http://bioconductor.org/biocLite.R") #biocLite("ComplexHeatmap")

library("hexbin")# install.packages("hexbin") #mixplot


ui <- dashboardPage(
  
  dashboardHeader( title = img(src="logo.png", "data2gRaph",height = 50, align = "left")
  ),
  
  
  
  ############## sidebar #####################
  
  dashboardSidebar(
    
    sidebarMenu(
      
      menuItem("About", tabName = "aboutTab", icon = icon("info-circle")),
      
      menuItem("Input Data", tabName = "inputdata", icon = icon("upload")),
      
      menuItem("Statistical Plots",tabName = "statPlots", icon = icon("dashboard"),startExpanded = FALSE,
               
               menuSubItem("Measures of Central Tendency", tabName = "CentralTendencyTab"),#http://boot.rdata.work/contrib/radar-example/
               
               menuSubItem("Measures of Dispersion", tabName = "DispersionTab"),
               
               menuSubItem("Covariance Matrix", tabName = "CovTab"),
               
               menuSubItem("Correlation Analyses", tabName = "CorTab")
               
               #https://cyfar.org/types-statistical-tests
               #http://www.p005.net/istatistik-test-secimi-nasil-yapilir
               
               
      ),
      menuItem("Unsupervised ML Plots",tabName = "statPlots", icon = icon("dashboard"),startExpanded = FALSE,
               
               menuSubItem("Principal Component Analysis ", tabName = "PCATab"),
               
               menuSubItem("K-means Clustering", tabName = "KmeansTab"),
               
               menuSubItem("Hierarchical Clustering", tabName = "HcTab")
               
               
      ),
      menuItem("Mix Plots", icon = icon("bar-chart-o"),startExpanded = FALSE,
               
               menuSubItem("Scatter+Rug+Hist", tabName = "s_r_h_Tab"),
               
               menuSubItem("Density+Densigram", tabName = "d_v_Tab"),
               
               menuSubItem("Hexagonal+Boxplot", tabName = "h_b_Tab"),
               
               menuSubItem("Complex Heatmap", tabName = "c_h_Tab"))),
    
    absolutePanel(
      bottom = 30,
      left = 30,
      draggable = F,
      width='100%',
      height='auto',
      a(icon('github fa-3x'),href='https://github.com/muhendis',target='_blank')
      
    ) 
    
    
    
  ),
  
  
  ############## Body #####################
  dashboardBody(
    
    source("ui//ui-tags.R",local=TRUE)$value,
    
    
    tabItems(
      source("ui//ui-tab-about.R",local=TRUE)$value,
      
      source("ui//ui-tab-inputdata.R",local=TRUE)$value,
      
      source("ui//ui-tab-CentralTendency.R",local=TRUE)$value,
      
      source("ui//ui-tab-dispersion.R",local=TRUE)$value,
      
      source("ui//ui-tab-cor.R",local=TRUE)$value,
      
      source("ui//ui-tab-cov.R",local=TRUE)$value,
      
      source("ui//ui-tab-pca.R",local=TRUE)$value,
      
      source("ui//ui-tab-Kmeans.R",local=TRUE)$value,
      
      source("ui//ui-tab-HierarchicalClustering.R",local=TRUE)$value,
      
      source("ui//ui-tab-Scatter_Rug_Hist.R",local=TRUE)$value,
      
      source("ui//ui-tab-Density_Densigram.R",local=TRUE)$value,
      
      source("ui//ui-tab-Hexagonal_Boxplot.R",local=TRUE)$value,
      
      source("ui//ui-tab-Complex Heatmap.R",local=TRUE)$value
      
      
    )
    
    
  )
  
  
  
)


################### Server ##################
server <- function(input, output) {
  
  source("server//server-inputdata.R",local = TRUE)$value
  
  source("server//server-cor.R",local = TRUE)$value
  
  source("server//server-cov.R",local = TRUE)$value
  
  source("server//server-dispersion.R",local = TRUE)$value
  
  source("server//server-CentralTendency.R",local = TRUE)$value
  
  source("server//server-pca.R",local = TRUE)$value
  
  source("server//server-Kmeans.R",local = TRUE)$value
  
  source("server//server-HierarchicalClustering.R",local = TRUE)$value
  
  source("server//server-select.R",local = TRUE)$value
  
  source("server//server-Scatter_Rug_Hist.R",local=TRUE)$value
  
  source("server//server-Density_Densigram.R",local=TRUE)$value
  
  source("server//server-Hexagonal_Boxplot.R",local=TRUE)$value
  
  source("server//server-Complex Heatmap.R",local=TRUE)$value
  
  
  
}

################## Running  ###########
shinyApp(ui, server)
#install.packages("BiocManager")

#BiocManager::install("ComplexHeatmap")
###packages
#install.packages(c("corrplot", "DT", "ggExtra", "ggfortify", "ggplot2", "ggpubr", "ggthemes", "hexbin", "RColorBrewer", "reshape2", "shiny", "shinycssloaders", "shinydashboard", "viridis"))
#if(!require(devtools)) install.packages("devtools")
#devtools::install_github("kassambara/ggpubr")