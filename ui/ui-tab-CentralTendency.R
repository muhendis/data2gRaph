tabItem(tabName = "CentralTendencyTab", 
        
        fluidRow(
          column(12,
                 box(title = "Measures of Central Tendency", solidHeader = F, status = "success", width = 12, collapsible = F,
                     
                     plotOutput("CentralTendencyPlot", click = "Significance level to the correlogram")
                     
                 )
          )
        )
)




