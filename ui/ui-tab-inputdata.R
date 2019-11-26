tabItem(tabName = "inputdata", 
        
        fluidRow(
          column(4,
                 box(title = "Upload file", solidHeader = T, status = "primary", width = 12, collapsible = F,
                     # Input: Select a file ----
                     fileInput("file1", "Choose CSV File",
                               multiple = FALSE,
                               accept = c("text/csv",
                                          "text/comma-separated-values,text/plain",
                                          ".csv")),
                     
                     # Horizontal line ----
                     tags$hr(),
                     
                     checkboxInput("exampleDataSetCheckBox", "Or use the sample data set? (To review the application)", FALSE),
                     
                     
                     
                     # Horizontal line ----
                     tags$hr(),
                     
                     
                     # Input: Checkbox if file has header ----
                     checkboxInput("header", "Header", TRUE),
                     
                     checkboxInput("rownames", "Row names", TRUE),
                     
                     # Input: Select separator ----
                     radioButtons("sep", "Separator",
                                  choices = c(Comma = ",",
                                              Semicolon = ";",
                                              Tab = "\t"),
                                  selected = ","),
                     
                     # Horizontal line ----
                     tags$hr()
                     
                     #checkboxInput("uploadShow", "Show?", TRUE)
                     
                     
                     
                 )
                 
                 
                 
          ),
          
          column(8,hr(),
                 
                 
                 # Output: Data file ----
                 box(title = "Table", solidHeader = F, status = "info", width = 12, collapsible = F,id = "tableBox",
                     withSpinner(DT::dataTableOutput("DTTable"))
                     
                 )
                 
          )
        )
)




