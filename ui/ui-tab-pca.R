tabItem(tabName = "PCATab", 
        
        fluidRow(
          column(12,
                 box(title = "Principal Component Analysis", solidHeader = F, status = "primary", width = 12, collapsible = F,
                     
                     
                     plotOutput("pcaPlot", click = "Principal Component Analysis")
                     
                     
                     
                     
                 )
          )
        )
)




