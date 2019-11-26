data <- reactive({
  
  if (input$exampleDataSetCheckBox ) {
    
    df <-mtcars
    
  }
  else if (!(input$exampleDataSetCheckBox)) {
    
    req(input$file1)
    
    if(input$rownames){
    
    df <- read.csv(input$file1$datapath,
                   header = input$header,
                   row.names = 1 ,
                   sep = input$sep,
                   quote = input$quote)
    }
    else if(!(input$rownames)){
    df <- read.csv(input$file1$datapath,
                   header = input$header,
                   sep = input$sep,
                   quote = input$quote)
    }
  }
  
  
  return(df)
  
  
})

output$DTTable <- DT::renderDataTable(
  
  DT::datatable(data(),
                options = list(
                  fixedHeader = TRUE,
                  scrollX = TRUE,
                  scrollY="200px")
                
  )
)