output$ui_d_v_X <- renderUI({
  
  
  if (is.null(input$d_v_input_type))
    return()
  
  
  if(input$d_v_input_type=="Row"){
    
    
    selectInput("d_v_X", label = h3("Select  X"), 
                choices =row.names(data()))
    
    
    
  }
  
  else if(input$d_v_input_type=="Column"){  
    
    
    selectInput("d_v_X", label = h3("Select  X"), 
                choices = colnames(data()))
    
    
  }
  
  
})


output$ui_d_v_Y <- renderUI({
  
  if (is.null(input$d_v_input_type))
    return()
  
  if(input$d_v_input_type=="Row"){
    
    
    selectInput("d_v_Y", label = h3("Select  Y"), 
                choices =row.names(data()))
    
  }
  
  else if(input$d_v_input_type=="Column"){       
    
    
    selectInput("d_v_Y", label = h3("Select  Y"), 
                choices = colnames(data()))
  }
  
  
})




output$d_v_Plot <- renderPlot({

  
  if(input$d_v_input_type=="Row"){
    
    df <-t(data())
    g<-ggplot(df, aes_(x= as.name(input$d_v_X) , 
                       y= as.name(input$d_v_Y))) +
      geom_point(color = "lightgray")+
      stat_density_2d(aes(fill = ..level..), geom = "polygon") +
      scale_fill_gradientn(colors = c("#FFEDA0", "#FEB24C", "#F03B20"))+
      theme(
        legend.box.background = element_rect(),
        legend.box.margin = margin(6, 6, 6, 6),
        legend.position = "left",
        axis.line = element_line(size = 3, colour = "grey80")
      )
  }
  
  else if(input$d_v_input_type=="Column"){
    
    g<-ggplot(data(), aes_string(x=input$d_v_X , 
                                 y=input$d_v_Y )) +
      
      geom_point(color = "lightgray")+
      stat_density_2d(aes(fill = ..level..), geom = "polygon") +
      scale_fill_gradientn(colors = c("#FFEDA0", "#FEB24C", "#F03B20"))+
      theme(
        legend.box.background = element_rect(),
        legend.box.margin = margin(6, 6, 6, 6),
        legend.position = "left",
        axis.line = element_line(size = 3, colour = "grey80")
      )
  }
  
  
  ggMarginal(g, type = "densigram",margins = 'both',
             size = 10,
             colour = '#093B20',
             fill = '#132168')


  
})




