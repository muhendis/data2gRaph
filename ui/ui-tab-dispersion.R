tabItem(tabName = "DispersionTab", 
        
        fluidRow(
          column(12,
                 box(title = "Range", solidHeader = F, status = "danger", width = 12, collapsible = F,
                     
                     
                     plotOutput("rangePlot", click = "Range")
                     
                 )
                 
                 
                 
          ),

        
          column(12,
                   box(title = "Interquartile Range ", solidHeader = F, status = "warning", width = 12, collapsible = F,
                       
                       
                       plotOutput("InterquartileRangePlot", click = "Range")
                       
                   )
                   
                   
            ),
          column(12,
                 box(title = "Standard Deviation", solidHeader = F, status = "primary", width = 12, collapsible = F,
                     
                     
                     plotOutput("sdPlot", click = "Range")
                     
                 )
          )
          
        )
)



