tabItem(tabName = "d_v_Tab", 
        
        fluidRow(
          column(12,
                 box(title = "Density+Densigram", solidHeader = F, status = "primary", width = 12, collapsible = F,
                     
                     
                     column(2, wellPanel(
                       
                       selectInput("d_v_input_type", label = h3("Select "), 
                                   c("Column" , "Row" )),
                       
                       uiOutput("ui_d_v_X"),
                       
                       uiOutput("ui_d_v_Y")
                       
                     )
                     ),
                     
                     
                     column(10, wellPanel(
                       
                       plotOutput("d_v_Plot", click = "Density+Densigram")
                     )
                     )
                     
                     
                     
                     
                 )
          )
        )
)
