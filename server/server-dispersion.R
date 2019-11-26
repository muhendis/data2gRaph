    

output$rangePlot <- renderPlot({
  
      min <-c(apply(data(), 2, min))
      max <-c(apply(data(), 2, max))
      Colnames <- c(colnames(data()))
      
      df <- data.frame(Colnames,min,max)
      
      ggplot(df, aes(x=Colnames))+
        geom_linerange(aes(ymin=min,ymax=max),linetype=2,color="blue")+
        geom_point(aes(y=min),size=3,color="red")+
        geom_point(aes(y=max),size=3,color="red")+
        xlab("Column names") + ylab("Range")+
        theme_light()+
        theme(
          plot.title = element_text(color="red", size=14, face="bold.italic"),
          axis.title.x = element_text(color="blue", size=14, face="bold"),
          axis.title.y = element_text(color="#993333", size=14, face="bold")
        )

      
})      

output$InterquartileRangePlot <- renderPlot({
  
  name = c(colnames(data()))
  Q3 = c(apply(data(),2,quantile)[4,])
  Q1 = c(apply(data(),2,quantile)[1,])

  df <- data.frame(
    name,
    Q3,
    Q1 
  )
  
  ggplot(df, aes(name,(Q3+Q1)/2))+
    geom_linerange(aes(ymin = Q1, ymax = Q3))+
    geom_line(aes(group = 1)) +
    geom_errorbar(aes(ymin = Q1, ymax = Q3), width=0.2, size=1, color="orange")+
    geom_point(size = 2)+
    xlab("Column names") + ylab("Interquartile range")+
    theme_light()+
    theme(
      plot.title = element_text(color="red", size=14, face="bold.italic"),
      axis.title.x = element_text(color="blue", size=14, face="bold"),
      axis.title.y = element_text(color="#993333", size=14, face="bold")
    )

  
}) 



output$sdPlot <- renderPlot({
  
  
  
  melted_cormat <- melt(round(apply(data(), 2, sd),2))

  ggplot(data=melted_cormat, aes(x=1:length(melted_cormat[,1]), y=value, size=value, label=row.names(melted_cormat)),guide=FALSE)+
    geom_point(color="white", fill="purple", shape=21)+ scale_size_area(max_size = 15)+
    scale_x_continuous(name="index")+
    scale_y_continuous(name="Standard Deviation")+
    geom_text(size=3,hjust = 1.0, nudge_x = -0.25)+ 
    theme_light()+
    theme(
      plot.title = element_text(color="red", size=14, face="bold.italic"),
      axis.title.x = element_text(color="blue", size=14, face="bold"),
      axis.title.y = element_text(color="#993333", size=14, face="bold")
    )
  
  
  
  
}) 


