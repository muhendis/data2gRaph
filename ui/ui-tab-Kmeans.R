
tabItem(tabName = "KmeansTab", 
        
        fluidRow(
          column(12,
                 box(title = "K-means Clustering", solidHeader = F, status = "primary", width = 12, collapsible = F,
                     
                     textInput("k", label = h3("K :"), value = "2"),
                     
                     hr(),
                     
                     plotOutput("KmeansPlot", click = "K-means Clustering")
                     
                     
                     
                     
                 )
          )
        )
)
