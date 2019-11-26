output$covPlot <- renderPlot({
  
  
  melted_cormat <- melt(round(cov(data()),2))
  
  head(melted_cormat)
  
  ggplot(data =melted_cormat , aes(x=Var1, y=Var2, fill=value)) + 
    
    geom_tile(color = "white")+
    
    geom_text(aes(Var2, Var1, label = value), color = "white", size = 4.1)+
    
    theme_light()
  
  
})


