

output$hcPlot <- renderPlot({
  
  cluster <- dist(scale(data()), method = "euclidean")
  
  hc <- hclust(cluster)
  
  
  if(input$hcK>1){
    
    op = par(bg = "azure2")
    plot(hc, cex =1.2)
    rect.hclust(hc, k = as.numeric(input$hcK), border = 2:5)
    
    
    }
})

