tabItem(tabName = "h_b_Tab", 
        
        fluidRow(
          column(12,
                 box(title = "Hexagonal+Boxplot", solidHeader = F, status = "primary", width = 12, collapsible = F,
                     
                     
                     
                     column(2, wellPanel(
                       
                       selectInput("h_b_input_type", label = h3("Select "), 
                                   c("Column" , "Row" )),
                       
                       uiOutput("ui_h_b_X"),
                       
                       uiOutput("ui_h_b_Y")
                       
                     )
                     ),
                     
                     
                     column(10, wellPanel(
                       
                       plotOutput("h_b_Plot", click = "Density+Densigram")
                     )
                     )
                     
                     
                     
                     
                 )
          )
        )
)
