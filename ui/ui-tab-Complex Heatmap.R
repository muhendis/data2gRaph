tabItem(tabName = "c_h_Tab", 
        
        fluidRow(
          column(12,
                 box(title = "Complex Heatmap", solidHeader = F, status = "primary" ,width = 12, collapsible = F,
                     
                     
                     checkboxInput("h_c_scale", "Scale ? ", TRUE),
                     
                     plotOutput("c_h_Plot", click = "Density+Densigram")
                     
                     
                     
                     
                     
                 )
          )
        )
)
