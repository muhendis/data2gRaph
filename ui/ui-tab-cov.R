tabItem(tabName = "CovTab", 
        
        fluidRow(
          column(12,
                 box(title = "Covariance Matrix", solidHeader = F, status = "primary", width = 12, collapsible = F,
                     
                     
                     
                     plotOutput("covPlot", click = "Covariance Matrix")
                     
                     
                     
                 )
          )
        )
)

