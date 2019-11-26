
output$corPlot <- renderPlot({
  
  
  col1 <-brewer.pal(n = 100, name = "Spectral")
  #https://cran.r-project.org/web/packages/corrplot/vignettes/corrplot-intro.html
  #http://www.sthda.com/english/wiki/colors-in-r
  #https://psu-psychology.github.io/r-bootcamp-2018/talks/correlation_regression.html
  #https://rstudio-pubs-static.s3.amazonaws.com/240657_5157ff98e8204c358b2118fa69162e18.html
  corrplot(cor(data(),method = input$selectPvalueMethod), type="upper", order="hclust", col=col1, addgrid.col="red",
           addCoef.col = "black", # Add coefficient of correlation
           tl.col="black", tl.srt=45, #Text label color and rotation
           diag=FALSE , #hide correlation coefficient on the principal diagonal
           p.mat = cor.mtest(data(),method = input$selectPvalueMethod)$p, sig.level = 0.05, insig = "blank")# Combine with significance
  
  
  
})