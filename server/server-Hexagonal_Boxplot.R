output$ui_h_b_X <- renderUI({
  
  
  if (is.null(input$h_b_input_type))
    return()
  
  
  if(input$h_b_input_type=="Row"){
    
    
    selectInput("h_b_X", label = h3("Select  X"), 
                choices =row.names(data()))
    
    
    
  }
  
  else if(input$h_b_input_type=="Column"){  
    
    
    selectInput("h_b_X", label = h3("Select  X"), 
                choices = colnames(data()))
    
    
  }
  
  
})


output$ui_h_b_Y <- renderUI({
  
  if (is.null(input$h_b_input_type))
    return()
  
  if(input$h_b_input_type=="Row"){
    
    
    selectInput("h_b_Y", label = h3("Select  Y"), 
                choices =row.names(data()))
    
  }
  
  else if(input$h_b_input_type=="Column"){       
    
    
    selectInput("h_b_Y", label = h3("Select  Y"), 
                choices = colnames(data()))
  }
  
  
})




output$h_b_Plot <- renderPlot({
  
  
  if(input$d_v_input_type=="Row"){
    
    df <-t(data())
    g<-ggplot(df, aes_(x= as.name(input$h_b_X) , 
                       y= as.name(input$h_b_Y))) +
      geom_hex(bins = 8, color = "white")+
      scale_fill_gradient(low =  "#00AFBB", high = "#FC4E07")+
      geom_point(alpha=0)+
      theme_minimal()+
      theme_stata()+
      theme(
        legend.box.background = element_rect(),
        legend.position = "left")
    
  }
  
  else if(input$d_v_input_type=="Column"){
    
    g<-ggplot(data(), aes_string(x=input$h_b_X , 
                                 y=input$h_b_Y )) +
      
      geom_hex(bins = 8, color = "white")+
      scale_fill_gradient(low =  "#00AFBB", high = "#FC4E07")+
      geom_point(alpha=0)+
      theme_minimal()+
      theme_stata()+
      theme(
        legend.box.background = element_rect(),
        legend.position = "left")
    
  }
  
  
  ggMarginal(g, type = "boxplot",margins = 'both',
             size = 5,
             colour = '#FF0000',
             fill = '#FFA500')
  
  
  
})




