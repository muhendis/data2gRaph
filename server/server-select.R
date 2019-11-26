output$ui_X <- renderUI({
  
  
  if (is.null(input$input_type))
    return()
  
  
  if(input$input_type=="Row"){
    
    
    selectInput("X", label = h3("Select  X"), 
                choices =row.names(data()))
    
    
    
  }
  
  else if(input$input_type=="Column"){  
    
    
    selectInput("X", label = h3("Select  X"), 
                choices = colnames(data()))
    
    
  }
  
  
})


output$ui_Y <- renderUI({
  
  if (is.null(input$input_type))
    return()
  
  if(input$input_type=="Row"){
    
    
    selectInput("Y", label = h3("Select  Y"), 
                choices =row.names(data()))
    
  }
  
  else if(input$input_type=="Column"){       
    
    
    selectInput("Y", label = h3("Select  Y"), 
                choices = colnames(data()))
  }
  
  
})


output$ui_color <- renderUI({
  
  if(input$input_type=="Row"){
    
    
    
    selectInput("color", label = h3("Color"), 
                choices =row.names(data()))
  }
  
  else if(input$input_type=="Column"){       
    
    
    selectInput("color", label = h3("Color"), 
                choices = colnames(data()))
  }
  
})