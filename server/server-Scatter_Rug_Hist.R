output$ui_s_r_h_X <- renderUI({
  
  
  if (is.null(input$s_r_h_input_type))
    return()
  
  
  if(input$s_r_h_input_type=="Row"){
    
    
    selectInput("s_r_h_X", label = h3("Select  X"), 
                choices =row.names(data()))
    
    
    
  }
  
  else if(input$s_r_h_input_type=="Column"){  
    
    
    selectInput("s_r_h_X", label = h3("Select  X"), 
                choices = colnames(data()))
    
    
  }
  
  
})


output$ui_s_r_h_Y <- renderUI({
  
  if (is.null(input$s_r_h_input_type))
    return()
  
  if(input$s_r_h_input_type=="Row"){
    
    
    selectInput("s_r_h_Y", label = h3("Select  Y"), 
                choices =row.names(data()))
    
  }
  
  else if(input$s_r_h_input_type=="Column"){       
    
    
    selectInput("s_r_h_Y", label = h3("Select  Y"), 
                choices = colnames(data()))
  }
  
  
})


output$ui_s_r_h_color <- renderUI({
  
  if(input$s_r_h_input_type=="Row"){
    
    
    
    selectInput("s_r_h_color", label = h3("Color"), 
                choices =row.names(data()))
  }
  
  else if(input$s_r_h_input_type=="Column"){       
    
    
    selectInput("s_r_h_color", label = h3("Color"), 
                choices = colnames(data()))
  }
  
})







output$s_r_h_Plot <- renderPlot({
  
  if(input$s_r_h_input_type=="Row"){
    
    df <-t(data())
    g<-ggplot(df, aes_(x= as.name(input$s_r_h_X) , 
                       y= as.name(input$s_r_h_Y))) +
      
      geom_point(aes_(colour =  as.name(input$s_r_h_color))) +
      
      geom_rug( position = "jitter")+ 
      
      theme_hc()+
      
      theme(
        legend.box.background = element_rect(),
        legend.box.margin = margin(6, 6, 6, 6),
        legend.position = "left"
      )
  }
  
  else if(input$s_r_h_input_type=="Column"){
    
    g<-ggplot(data(), aes_string(x=input$s_r_h_X , 
                                 y=input$s_r_h_Y )) +
      
      geom_point(aes_string(colour = input$s_r_h_color)) +
      
      geom_rug( position = "jitter")+ 
      
      theme_hc()+
      
      theme(
        legend.box.background = element_rect(),
        legend.box.margin = margin(6, 6, 6, 6),
        legend.position = "left"
      )
  }
  
  
  ggMarginal(g, type = "hist",margins = 'both',
             size = 9,
             colour = '#103B20',
             fill = '#a42168')
  
  
})











