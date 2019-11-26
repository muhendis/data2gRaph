


output$CentralTendencyPlot <- renderPlot({
  
  
  getmode <- function(v) {
    uniqv <- unique(v)
    uniqv[which.max(tabulate(match(v, uniqv)))]
  }
  
  
  
  mean <-c(apply(data(), 2, mean))
  
  median <-c(apply(data(), 2, median))
  
  mod<-c(apply(data(), 2, getmode))
  
  group<- c("Mean","Median","Mode")
  
  df <-data.frame(mean,median,mod)
  
  colnames(df) <- group
  
  melted_cormat <- melt(t(df))
  
  colnames(melted_cormat)<- c("Color","Var2","value")
  
  ggplot(melted_cormat,aes(fill=Color, y=value, x=as.factor(Var2))) + 
    geom_bar(position="dodge", stat="identity") +
    scale_colour_viridis(discrete=T, name="") +
    coord_flip() +
    xlab("") +
    ylab("Value")+
    theme_light()

})    





