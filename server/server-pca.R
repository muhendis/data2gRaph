
output$pcaPlot <- renderPlot({
  
  autoplot(prcomp(data()), colour = "PC1",label = TRUE, label.size = 2.9, shape = FALSE)
  
  
  
})