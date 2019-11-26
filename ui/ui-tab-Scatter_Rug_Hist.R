tabItem(tabName = "s_r_h_Tab", 
        
        fluidRow(
          column(12,
                 box(title = "Scatter+Rug+Hist", solidHeader = F, status = "primary", width = 12, collapsible = F,
                     
                     
                     column(2, wellPanel(
                       
                       selectInput("s_r_h_input_type", label = h3("Select "), 
                                   c("Column" , "Row" )),
                       
                       uiOutput("ui_s_r_h_X"),
                       
                       uiOutput("ui_s_r_h_Y"),
                       
                       uiOutput("ui_s_r_h_color")
                     )),
                     
                     
                     column(10, wellPanel(
                       plotOutput("s_r_h_Plot", click = "Scatter+Rug+Hist")
                     ))
                     
                     
                     
                     
                 ))))
