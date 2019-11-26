
output$KmeansPlot <- renderPlot({
  
  set.seed(1)
  if(input$k>0){
    
    autoplot(kmeans(data(),input$k), 
             data = data(),
             label = TRUE,
             label.size = 2.9, 
             shape = FALSE,
             frame = TRUE)
  }
  
  
  
})